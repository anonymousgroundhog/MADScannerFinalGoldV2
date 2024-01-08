.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionNoTitleViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;
.source "CollectionSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionNoTitleViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/SectionNoHeaderBinding;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionNoTitleViewHolder;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 107
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    invoke-static {p2}, Lcom/brakefield/infinitestudio/databinding/SectionNoHeaderBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionNoHeaderBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionNoTitleViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionNoHeaderBinding;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 0

    return-void
.end method
