.class public abstract Lcom/brakefield/infinitestudio/ui/UI;
.super Ljava/lang/Object;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;
    }
.end annotation


# instance fields
.field private preparingToShowShortcuts:Z

.field private shortcutList:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/UI;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/UI;->preparingToShowShortcuts:Z

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/UI;)Landroid/view/View;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/UI;->shortcutList:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/UI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UI;->shortcutList:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public abstract getDefaultKeyCommandGroups(Landroid/app/Activity;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHoverContainer()Landroid/view/ViewGroup;
.end method

.method protected abstract getShortcutAction(Landroid/app/Activity;I)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
.end method

.method public handleShortcutKeys(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/UI;->getHoverContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 45
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x71

    if-eq v1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_2

    .line 46
    :cond_0
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/UI;->preparingToShowShortcuts:Z

    if-nez p2, :cond_1

    .line 47
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/UI;->preparingToShowShortcuts:Z

    .line 48
    new-instance p2, Lcom/brakefield/infinitestudio/ui/UI$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/UI$1;-><init>(Lcom/brakefield/infinitestudio/ui/UI;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, p2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return v2

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UI;->shortcutList:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/UI;->preparingToShowShortcuts:Z

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/UI;->shortcutList:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/UI;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/UI;->shortcutList:Landroid/view/View;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move v2, p1

    :goto_0
    return v2

    .line 68
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 69
    sget-object v0, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->keyCommandGroups:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    .line 71
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->handled(IZZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_7
    return p1
.end method

.method public abstract isPopupShowing()Z
.end method

.method public setupKeyCommands(Landroid/app/Activity;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/UI;->getDefaultKeyCommandGroups(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->init(Ljava/util/List;)V

    .line 36
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->load(Lcom/brakefield/infinitestudio/ui/UI;)V

    return-void
.end method

.method public abstract update(Landroid/app/Activity;)V
.end method
