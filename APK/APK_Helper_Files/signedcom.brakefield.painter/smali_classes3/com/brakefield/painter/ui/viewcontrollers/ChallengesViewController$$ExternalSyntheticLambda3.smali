.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;->update()V

    return-void
.end method
