.class Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;
.super Lcom/brakefield/infinitestudio/geometry/Point;
.source "ProfileEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/ProfileEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlPoint"
.end annotation


# instance fields
.field active:Z

.field cancel:Z

.field final synthetic this$0:Lcom/brakefield/painter/ui/ProfileEditorView;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/ProfileEditorView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;->this$0:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/ProfileEditorView;Lcom/brakefield/painter/ui/ProfileEditorView$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/ProfileEditorView$ControlPoint;-><init>(Lcom/brakefield/painter/ui/ProfileEditorView;)V

    return-void
.end method
