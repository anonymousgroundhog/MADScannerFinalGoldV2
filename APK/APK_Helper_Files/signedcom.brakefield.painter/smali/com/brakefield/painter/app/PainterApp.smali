.class public Lcom/brakefield/painter/app/PainterApp;
.super Lcom/infinite/app/CoreApp;
.source "PainterApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/app/PainterApp$UI;
    }
.end annotation


# instance fields
.field private final appUI:Lcom/infinite/app/AppUI;

.field private final dialogSystem:Lcom/infinite/app/DialogSystem;

.field private final messageSystem:Lcom/infinite/app/MessageSystem;

.field private final ui:Lcom/brakefield/painter/app/PainterApp$UI;

.field private final viewSystem:Lcom/infinite/app/ViewSystem;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/CoreApp;-><init>(J)V

    .line 39
    new-instance v0, Lcom/brakefield/painter/app/PainterApp$UI;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/app/PainterApp$UI;-><init>(Lcom/brakefield/painter/app/PainterApp;)V

    iput-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->ui:Lcom/brakefield/painter/app/PainterApp$UI;

    .line 40
    new-instance v0, Lcom/infinite/app/MessageSystem;

    invoke-direct {v0}, Lcom/infinite/app/MessageSystem;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->messageSystem:Lcom/infinite/app/MessageSystem;

    .line 41
    new-instance v0, Lcom/infinite/app/DialogSystem;

    invoke-direct {v0}, Lcom/infinite/app/DialogSystem;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->dialogSystem:Lcom/infinite/app/DialogSystem;

    .line 42
    new-instance v0, Lcom/infinite/app/ViewSystem;

    invoke-direct {v0}, Lcom/infinite/app/ViewSystem;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->viewSystem:Lcom/infinite/app/ViewSystem;

    .line 46
    new-instance v0, Lcom/infinite/app/AppUI;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp;->getAppUI(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/infinite/app/AppUI;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->appUI:Lcom/infinite/app/AppUI;

    return-void
.end method

.method private native getAppIcons(J)J
.end method

.method private native getAppStrings(J)J
.end method

.method private native getAppUI(J)J
.end method

.method private native getAppViews(J)J
.end method

.method private native getEventNameFromInteraction(JJ)Ljava/lang/String;
.end method

.method private native getPendingDialog(J)J
.end method

.method private native getString(JI)Ljava/lang/String;
.end method

.method private handlePendingDialog(Landroid/content/Context;)V
    .locals 8

    .line 89
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->getPendingDialog(J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/brakefield/painter/app/PainterApp;->dialogSystem:Lcom/infinite/app/DialogSystem;

    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->getAppStrings(J)J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/infinite/app/DialogSystem;->showDialog(Landroid/content/Context;JJ)V

    :cond_0
    return-void
.end method

.method private handlePendingMessages(Landroid/content/Context;)V
    .locals 8

    .line 82
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->nextPendingMessage(J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->messageSystem:Lcom/infinite/app/MessageSystem;

    iget-wide v1, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/app/PainterApp;->getAppStrings(J)J

    move-result-wide v4

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/infinite/app/MessageSystem;->getStringFromMessage(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infinite/app/MessageSystem;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handlePendingViews(Landroid/content/Context;)V
    .locals 8

    .line 96
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->nextPendingView(J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/brakefield/painter/app/PainterApp;->viewSystem:Lcom/infinite/app/ViewSystem;

    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->getAppViews(J)J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/infinite/app/ViewSystem;->showView(Landroid/content/Context;JJ)V

    :cond_0
    return-void
.end method

.method private native needsUpdate(J)Z
.end method

.method private native nextPendingMessage(J)J
.end method

.method private native nextPendingView(J)J
.end method

.method private native nextUpdateComponent(J)J
.end method

.method private native update(J)V
.end method


# virtual methods
.method public bindUI(Landroid/view/View;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method public bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 6

    .line 107
    invoke-virtual {p0}, Lcom/brakefield/painter/app/PainterApp;->getUI()Lcom/brakefield/painter/app/PainterApp$UI;

    move-result-object v0

    const v1, 0x7f0a0663

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/app/PainterApp$UI;->bind(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    :cond_0
    return-void
.end method

.method public canBindInteractions(Landroid/view/View;)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/brakefield/painter/app/PainterApp;->getUI()Lcom/brakefield/painter/app/PainterApp$UI;

    move-result-object v0

    const v1, 0x7f0a0663

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, p0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->canBindInteractions(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->appUI:Lcom/infinite/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/infinite/app/AppUI;->findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->ui:Lcom/brakefield/painter/app/PainterApp$UI;

    invoke-static {v0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->access$100(Lcom/brakefield/painter/app/PainterApp$UI;Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    return-object p1
.end method

.method public getAppIcons()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->getAppIcons(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppStrings()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->getAppStrings(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getComponent(I)Lcom/infinite/app/ui/UIComponent;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->appUI:Lcom/infinite/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/infinite/app/AppUI;->getComponent(I)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->ui:Lcom/brakefield/painter/app/PainterApp$UI;

    invoke-static {v0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->access$100(Lcom/brakefield/painter/app/PainterApp$UI;Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    return-object p1
.end method

.method public getEventNameFromInteraction(J)Ljava/lang/String;
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/app/PainterApp;->getEventNameFromInteraction(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/app/PainterApp;->getString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUI()Lcom/brakefield/painter/app/PainterApp$UI;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->ui:Lcom/brakefield/painter/app/PainterApp$UI;

    return-object v0
.end method

.method public needsUpdate()Z
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->needsUpdate(J)Z

    move-result v0

    return v0
.end method

.method public registerDialog(ILcom/infinite/app/DialogSystem$Dialog;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->dialogSystem:Lcom/infinite/app/DialogSystem;

    invoke-virtual {v0, p1, p2}, Lcom/infinite/app/DialogSystem;->register(ILcom/infinite/app/DialogSystem$Dialog;)V

    return-void
.end method

.method public registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp;->viewSystem:Lcom/infinite/app/ViewSystem;

    invoke-virtual {v0, p1, p2}, Lcom/infinite/app/ViewSystem;->register(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    return-void
.end method

.method public update()V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->update(J)V

    return-void
.end method

.method public updateUI(Landroid/content/Context;)V
    .locals 4

    .line 64
    :goto_0
    iget-wide v0, p0, Lcom/brakefield/painter/app/PainterApp;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/app/PainterApp;->nextUpdateComponent(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/brakefield/painter/app/PainterApp;->ui:Lcom/brakefield/painter/app/PainterApp$UI;

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/painter/app/PainterApp$UI;->updateComponent(J)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp;->handlePendingMessages(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp;->handlePendingDialog(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp;->handlePendingViews(Landroid/content/Context;)V

    return-void
.end method

.method public updateUIForView(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/brakefield/painter/app/PainterApp;->getUI()Lcom/brakefield/painter/app/PainterApp$UI;

    move-result-object v0

    .line 75
    invoke-static {v0, p0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->access$000(Lcom/brakefield/painter/app/PainterApp$UI;Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/infinite/app/ui/UIComponent;->update()V

    :cond_0
    return-void
.end method
