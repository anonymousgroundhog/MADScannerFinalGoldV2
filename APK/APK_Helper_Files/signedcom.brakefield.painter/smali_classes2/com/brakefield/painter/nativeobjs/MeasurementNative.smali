.class public Lcom/brakefield/painter/nativeobjs/MeasurementNative;
.super Lcom/infinite/core/NativeObject;
.source "MeasurementNative.java"


# static fields
.field public static final CENTIMETERS:I = 0x3

.field public static final INCHES:I = 0x1

.field public static final MILLIMETERS:I = 0x2

.field public static final PIXELS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/infinite/core/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native abbreviation(J)Ljava/lang/String;
.end method

.method private native getDPI(J)I
.end method

.method private native getType(J)I
.end method

.method private native getValue(J)F
.end method

.method private native inPixels(J)I
.end method

.method private native name(J)Ljava/lang/String;
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeInit()J
.end method

.method private native setDPI(JI)V
.end method

.method private native setPixels(JI)V
.end method

.method private native setType(JI)V
.end method

.method private native setValue(JF)V
.end method


# virtual methods
.method public abbreviation()Ljava/lang/String;
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->abbreviation(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteNativePointer(J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativeDelete(J)V

    return-void
.end method

.method public getDPI()I
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getDPI(J)I

    move-result v0

    return v0
.end method

.method public getNativePointer()J
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativeInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue(J)F

    move-result v0

    return v0
.end method

.method public inPixels()I
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels(J)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->name(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDPI(I)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setDPI(JI)V

    return-void
.end method

.method public setPixels(I)V
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setPixels(JI)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(JI)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(JF)V

    return-void
.end method
