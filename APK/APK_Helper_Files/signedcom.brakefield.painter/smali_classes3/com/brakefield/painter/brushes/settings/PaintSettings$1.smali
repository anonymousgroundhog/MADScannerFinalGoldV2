.class Lcom/brakefield/painter/brushes/settings/PaintSettings$1;
.super Ljava/lang/Object;
.source "PaintSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/PaintSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/PaintSettings;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/PaintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifierName()I
    .locals 1

    const v0, 0x7f1209fd

    return v0
.end method

.method public getProfileCurve()J
    .locals 2

    .line 109
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPressureDilutionProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPressureEffectsDilution()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushPressureEffectsDilution(Z)V

    return-void
.end method
