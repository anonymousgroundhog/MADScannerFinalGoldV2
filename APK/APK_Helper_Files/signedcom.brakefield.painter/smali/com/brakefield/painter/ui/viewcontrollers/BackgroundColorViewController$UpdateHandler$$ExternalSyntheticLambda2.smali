.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Resources;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->lambda$new$2(Landroid/content/res/Resources;Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/String;)V

    return-void
.end method
