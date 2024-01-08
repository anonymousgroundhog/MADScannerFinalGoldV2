.class abstract Lcom/infinite/app/ui/Dropdown$DropdownItem;
.super Ljava/lang/Object;
.source "Dropdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/Dropdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DropdownItem"
.end annotation


# instance fields
.field public final returnObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/infinite/app/ui/Dropdown;


# direct methods
.method constructor <init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/Object;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$DropdownItem;->this$0:Lcom/infinite/app/ui/Dropdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/infinite/app/ui/Dropdown$DropdownItem;->returnObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract updateView(Landroid/view/View;)V
.end method
