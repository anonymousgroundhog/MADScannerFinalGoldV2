.class public final synthetic Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/brakefield/painter/ShareManager;->lambda$launchShareOptions$4(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method
