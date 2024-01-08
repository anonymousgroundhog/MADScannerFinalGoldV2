.class public Lcom/infinite/core/NativeObject$OverrideMethodException;
.super Ljava/lang/Exception;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/core/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverrideMethodException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infinite/core/NativeObject;


# direct methods
.method public constructor <init>(Lcom/infinite/core/NativeObject;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/infinite/core/NativeObject$OverrideMethodException;->this$0:Lcom/infinite/core/NativeObject;

    .line 67
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
