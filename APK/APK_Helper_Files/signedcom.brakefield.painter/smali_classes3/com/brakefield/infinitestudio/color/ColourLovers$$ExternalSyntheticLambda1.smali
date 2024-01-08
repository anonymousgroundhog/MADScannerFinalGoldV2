.class public final synthetic Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColourLovers$OnPatternsCompletionListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onCompletion(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/color/ColourLovers;->lambda$populateNewestPatterns$2(Landroid/view/View$OnClickListener;Ljava/util/List;)V

    return-void
.end method
