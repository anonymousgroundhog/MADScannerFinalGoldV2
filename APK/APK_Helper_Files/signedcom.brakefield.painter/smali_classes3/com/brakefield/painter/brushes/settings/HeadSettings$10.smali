.class Lcom/brakefield/painter/brushes/settings/HeadSettings$10;
.super Ljava/lang/Object;
.source "HeadSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/HeadSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$10;->this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifierName()I
    .locals 1

    const v0, 0x7f120af3

    return v0
.end method

.method public getProfileCurve()J
    .locals 2

    .line 598
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTiltHeadDepthProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 592
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushTiltEffectsHeadDepth()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 595
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushTiltEffectsHeadDepth(Z)V

    return-void
.end method
