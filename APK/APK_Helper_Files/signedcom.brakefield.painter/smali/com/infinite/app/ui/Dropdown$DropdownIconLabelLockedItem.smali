.class public Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;
.super Lcom/infinite/app/ui/Dropdown$DropdownItem;
.source "Dropdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/Dropdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropdownIconLabelLockedItem"
.end annotation


# instance fields
.field final iconResourceId:I

.field final label:Ljava/lang/String;

.field final synthetic this$0:Lcom/infinite/app/ui/Dropdown;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;->this$0:Lcom/infinite/app/ui/Dropdown;

    .line 267
    invoke-direct {p0, p1, p4}, Lcom/infinite/app/ui/Dropdown$DropdownItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/Object;)V

    .line 268
    iput-object p2, p0, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;->label:Ljava/lang/String;

    .line 269
    iput p3, p0, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;->iconResourceId:I

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 288
    sget v0, Lcom/infinite/app/R$layout;->dropdown_icon_locked_item:I

    return v0
.end method

.method public bridge synthetic isSelectable()Z
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 3

    .line 275
    sget v0, Lcom/infinite/app/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    iget-object v1, p0, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget v1, Lcom/infinite/app/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 279
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 280
    iget v0, p0, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;->iconResourceId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    sget v0, Lcom/infinite/app/R$id;->lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v0, 0xb5

    const/16 v1, 0xe5

    const/16 v2, 0x33

    .line 283
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
