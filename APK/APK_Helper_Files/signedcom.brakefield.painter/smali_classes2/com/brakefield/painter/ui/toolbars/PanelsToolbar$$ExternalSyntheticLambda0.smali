.class public final synthetic Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->lambda$getView$4$com-brakefield-painter-ui-toolbars-PanelsToolbar(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;IZ)V

    return-void
.end method
