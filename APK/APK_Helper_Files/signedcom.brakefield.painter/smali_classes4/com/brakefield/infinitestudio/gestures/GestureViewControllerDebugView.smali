.class public Lcom/brakefield/infinitestudio/gestures/GestureViewControllerDebugView;
.super Landroid/view/View;
.source "GestureViewControllerDebugView.java"


# instance fields
.field private gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewControllerDebugView;->gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    .line 13
    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bind(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewControllerDebugView;->setupListeners()V

    return-void
.end method


# virtual methods
.method setupListeners()V
    .locals 0

    return-void
.end method
