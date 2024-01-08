.class public final synthetic Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ProgressBar;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ProgressBar;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda4;->f$0:Landroid/widget/ProgressBar;

    iput-wide p2, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda4;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda4;->f$0:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/brakefield/infinitestudio/FileManager$$ExternalSyntheticLambda4;->f$1:D

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->lambda$copyAllFilesToScopedStorage$4(Landroid/widget/ProgressBar;D)V

    return-void
.end method
