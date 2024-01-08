.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->lambda$new$6(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/Float;)V

    return-void
.end method
