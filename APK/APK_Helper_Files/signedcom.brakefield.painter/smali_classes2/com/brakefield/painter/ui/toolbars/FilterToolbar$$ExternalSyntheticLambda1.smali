.class public final synthetic Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Lcom/brakefield/painter/databinding/FilterToolbarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->lambda$getView$1$com-brakefield-painter-ui-toolbars-FilterToolbar(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FilterToolbarBinding;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
