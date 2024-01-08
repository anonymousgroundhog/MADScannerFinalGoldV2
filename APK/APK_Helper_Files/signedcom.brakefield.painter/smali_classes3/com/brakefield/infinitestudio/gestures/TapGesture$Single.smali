.class public Lcom/brakefield/infinitestudio/gestures/TapGesture$Single;
.super Lcom/brakefield/infinitestudio/gestures/TapGesture;
.source "TapGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/TapGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Single"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/gestures/TapGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;Lcom/brakefield/infinitestudio/gestures/TapGesture$1;)V

    return-void
.end method


# virtual methods
.method protected requiredPointers()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
