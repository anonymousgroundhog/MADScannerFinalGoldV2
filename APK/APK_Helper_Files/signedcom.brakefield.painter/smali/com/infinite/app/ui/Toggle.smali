.class public Lcom/infinite/app/ui/Toggle;
.super Lcom/infinite/app/ui/UIComponent;
.source "Toggle.java"


# instance fields
.field toggle:Lcom/infinite/app/ui/views/BaseSwitch;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/UIComponent;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    return-void
.end method

.method private bindValueChangeListener(Landroid/view/View;)V
    .locals 4

    .line 26
    iget-wide v0, p0, Lcom/infinite/app/ui/Toggle;->nativePointer:J

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/Toggle;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v2, Lcom/infinite/app/ui/interactions/BoolChangeInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/BoolChangeInteraction;-><init>(J)V

    .line 29
    check-cast p1, Lcom/infinite/app/ui/views/BaseSwitch;

    .line 30
    new-instance v0, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;-><init>(Lcom/infinite/app/ui/Toggle;Lcom/infinite/app/ui/interactions/BoolChangeInteraction;)V

    invoke-virtual {p1, v0}, Lcom/infinite/app/ui/views/BaseSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private native isOn(JJ)Z
.end method


# virtual methods
.method public bind(Landroid/view/View;J)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/infinite/app/ui/UIComponent;->bind(Landroid/view/View;J)V

    .line 21
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/Toggle;->bindValueChangeListener(Landroid/view/View;)V

    .line 22
    check-cast p1, Lcom/infinite/app/ui/views/BaseSwitch;

    iput-object p1, p0, Lcom/infinite/app/ui/Toggle;->toggle:Lcom/infinite/app/ui/views/BaseSwitch;

    return-void
.end method

.method synthetic lambda$bindValueChangeListener$0$com-infinite-app-ui-Toggle(Lcom/infinite/app/ui/interactions/BoolChangeInteraction;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/infinite/app/ui/Toggle;->target:J

    invoke-virtual {p1, p3, v0, v1}, Lcom/infinite/app/ui/interactions/BoolChangeInteraction;->onValueChanged(ZJ)V

    return-void
.end method

.method public update()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/infinite/app/ui/Toggle;->toggle:Lcom/infinite/app/ui/views/BaseSwitch;

    if-eqz v0, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/infinite/app/ui/Toggle;->nativePointer:J

    iget-wide v2, p0, Lcom/infinite/app/ui/Toggle;->target:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/app/ui/Toggle;->isOn(JJ)Z

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/infinite/app/ui/Toggle;->toggle:Lcom/infinite/app/ui/views/BaseSwitch;

    invoke-virtual {v1}, Lcom/infinite/app/ui/views/BaseSwitch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/infinite/app/ui/Toggle;->toggle:Lcom/infinite/app/ui/views/BaseSwitch;

    invoke-virtual {v1, v0}, Lcom/infinite/app/ui/views/BaseSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method
