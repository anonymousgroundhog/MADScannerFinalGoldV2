.class public Lcom/brakefield/painter/OpacityControl;
.super Ljava/lang/Object;
.source "OpacityControl.java"


# static fields
.field public static final FLOW:I = 0x1

.field public static final OPACITY:I = 0x0

.field public static final SOFTNESS:I = 0x2


# instance fields
.field private final affectedValueObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public affects:I

.field private final affectsTargetObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectsTargetObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectedValueObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    return-void
.end method


# virtual methods
.method public addOnAffectedTargetChangeListener(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectsTargetObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public addOnAffectedValueChangeListener(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectedValueObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public getAffectedLabel()Ljava/lang/String;
    .locals 3

    .line 44
    iget v0, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    const v1, 0x7f1209bb

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 49
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f120aad

    .line 47
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f1201c1

    .line 46
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAffectedValue()F
    .locals 4

    .line 53
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    .line 54
    iget v1, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSoftness()F

    move-result v0

    :goto_0
    mul-float/2addr v0, v2

    return v0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getFlow()F

    move-result v0

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectsTargetObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->reset()V

    .line 30
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectedValueObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->reset()V

    return-void
.end method

.method public setAffectedValue(F)V
    .locals 4

    .line 63
    iget v0, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 65
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    .line 66
    iget v2, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSoftness(F)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setFlow(F)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    :goto_0
    return-void
.end method

.method public setAffects(I)V
    .locals 2

    .line 34
    iput p1, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_OPACITY_CONTROL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setup(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 24
    iput-object p1, p0, Lcom/brakefield/painter/OpacityControl;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "PREF_OPACITY_CONTROL"

    const/4 v1, 0x0

    .line 25
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    return-void
.end method

.method public update()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectsTargetObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget v1, p0, Lcom/brakefield/painter/OpacityControl;->affects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->update(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/OpacityControl;->affectedValueObservers:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-virtual {p0}, Lcom/brakefield/painter/OpacityControl;->getAffectedValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->update(Ljava/lang/Object;)V

    return-void
.end method
