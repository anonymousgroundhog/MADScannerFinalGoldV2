.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionEmptyViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;
.source "CollectionSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionEmptyViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/SectionEmptyBinding;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionEmptyViewHolder;->this$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 141
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    invoke-static {p2}, Lcom/brakefield/infinitestudio/databinding/SectionEmptyBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionEmptyBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionEmptyViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/SectionEmptyBinding;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 0

    return-void
.end method
