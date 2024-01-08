.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;
.source "CollectionSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionTitleViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

.field private uiBindingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 119
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->uiBindingKey:Ljava/lang/String;

    .line 120
    invoke-static {p2}, Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 124
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->uiBindingKey:Ljava/lang/String;

    .line 125
    invoke-static {p2}, Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    .line 126
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->uiBindingKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;->label:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;->label:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->uiBindingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/databinding/SectionHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$id;->ui_binding_key:I

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;->uiBindingKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
