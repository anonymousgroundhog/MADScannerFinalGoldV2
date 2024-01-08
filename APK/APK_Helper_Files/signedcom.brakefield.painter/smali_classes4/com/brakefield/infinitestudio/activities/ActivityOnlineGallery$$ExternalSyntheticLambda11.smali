.class public final synthetic Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;->f$1:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;->f$1:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;

    invoke-static {v0, v1, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->lambda$showImage$13(Landroidx/fragment/app/FragmentActivity;Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;Landroid/view/View;)V

    return-void
.end method
