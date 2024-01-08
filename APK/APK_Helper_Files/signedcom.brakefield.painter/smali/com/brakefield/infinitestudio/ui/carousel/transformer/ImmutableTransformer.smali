.class public final Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;
.super Ljava/lang/Object;
.source "ImmutableTransformer.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# instance fields
.field private mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    return-void
.end method


# virtual methods
.method public final onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;->onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V

    return-void
.end method

.method public final transform(Landroid/view/View;F)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    invoke-interface {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;->transform(Landroid/view/View;F)V

    return-void
.end method
