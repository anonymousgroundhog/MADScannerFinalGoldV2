.class public Lcom/brakefield/painter/ui/ChallengeInfoDialog;
.super Landroid/app/AlertDialog;
.source "ChallengeInfoDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

.field private final listener:Ljava/lang/Runnable;

.field private final viewController:Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x7f130000

    .line 21
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->activity:Landroid/app/Activity;

    .line 23
    iput-object p3, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;

    .line 24
    iput-object p2, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    .line 25
    iput-object p4, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->listener:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-brakefield-painter-ui-ChallengeInfoDialog()V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->dismiss()V

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->listener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 32
    iget-object p1, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;

    iget-object v0, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    new-instance v2, Lcom/brakefield/painter/ui/ChallengeInfoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/ChallengeInfoDialog$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/ChallengeInfoDialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
