.class public final synthetic Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$1:Landroid/widget/ImageView;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->lambda$showImage$1(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
