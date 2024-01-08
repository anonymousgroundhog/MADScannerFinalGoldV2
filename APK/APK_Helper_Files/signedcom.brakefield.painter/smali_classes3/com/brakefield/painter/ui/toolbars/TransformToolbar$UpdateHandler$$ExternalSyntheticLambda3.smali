.class public final synthetic Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/TransformToolbarBinding;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;Lcom/brakefield/painter/databinding/TransformToolbarBinding;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/databinding/TransformToolbarBinding;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/databinding/TransformToolbarBinding;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->lambda$new$3$com-brakefield-painter-ui-toolbars-TransformToolbar$UpdateHandler(Lcom/brakefield/painter/databinding/TransformToolbarBinding;Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method
