.class public final synthetic Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;->f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;->f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->lambda$setupToolbar$14$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;IZ)V

    return-void
.end method
