.class public final synthetic Lcom/brakefield/infinitestudio/ui/BlurImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/BlurImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/BlurImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurImageView$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->blurImage()V

    return-void
.end method
