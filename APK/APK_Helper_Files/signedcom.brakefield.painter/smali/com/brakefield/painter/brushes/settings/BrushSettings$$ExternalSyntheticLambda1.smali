.class public final synthetic Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/ProfileCurveBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/databinding/ProfileCurveBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->lambda$setupProfileCurve$0(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Landroid/view/View;)V

    return-void
.end method
