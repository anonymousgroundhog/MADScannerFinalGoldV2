.class public Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;
.super Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommunityBrushesFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1200db

    .line 308
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populateBrushes()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    new-instance v0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;-><init>(Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
