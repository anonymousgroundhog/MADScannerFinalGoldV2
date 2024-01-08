.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->lambda$new$0(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
