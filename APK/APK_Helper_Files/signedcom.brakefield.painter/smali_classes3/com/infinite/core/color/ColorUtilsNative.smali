.class public Lcom/infinite/core/color/ColorUtilsNative;
.super Ljava/lang/Object;
.source "ColorUtilsNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCmykFromColor(I)[F
.end method

.method public static native getColorFromCmyk([F)I
.end method

.method public static native getColorFromHsb([F)I
.end method

.method public static native getColorFromLab([F)I
.end method

.method public static native getHsbFromColor(I)[F
.end method

.method public static native getLabFromColor(I)[F
.end method

.method public static native getToneLockedColor(II)I
.end method
