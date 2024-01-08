.class Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;
.super Ljava/lang/Object;
.source "StrokeSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/StrokeSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

.field final synthetic val$brushStrokeSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;->this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;->val$brushStrokeSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifierName()I
    .locals 1

    const v0, 0x7f120ad0

    return v0
.end method

.method public getProfileCurve()J
    .locals 2

    .line 211
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getStrokeFlowProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;->val$brushStrokeSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->hasFlowProfile()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$3;->val$brushStrokeSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setHasFlowProfile(Z)V

    return-void
.end method
