.class public final synthetic Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->lambda$new$1(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Float;)V

    return-void
.end method
