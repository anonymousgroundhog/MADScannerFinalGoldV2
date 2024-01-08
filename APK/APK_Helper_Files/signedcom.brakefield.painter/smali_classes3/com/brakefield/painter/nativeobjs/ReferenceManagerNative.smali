.class public Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "ReferenceManagerNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native addReferenceImage(JLjava/lang/String;)V
.end method

.method private native deleteReferenceImage(JI)V
.end method

.method private native isReferenceVisible(JI)Z
.end method

.method private native loadReference(JIIII)V
.end method

.method private native numberOfReferences(J)I
.end method

.method private native referenceLocation(JI)Ljava/lang/String;
.end method

.method private native referenceNeedsLoading(J)I
.end method

.method private native setReferenceVisible(JIZ)V
.end method


# virtual methods
.method public addReferenceImage(Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->addReferenceImage(JLjava/lang/String;)V

    return-void
.end method

.method public deleteReferenceImage(I)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->deleteReferenceImage(JI)V

    return-void
.end method

.method public isReferenceVisible(I)Z
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->isReferenceVisible(JI)Z

    move-result p1

    return p1
.end method

.method public loadReference(IIII)V
    .locals 7

    .line 14
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->loadReference(JIIII)V

    return-void
.end method

.method public numberOfReferences()I
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->numberOfReferences(J)I

    move-result v0

    return v0
.end method

.method public referenceLocation(I)Ljava/lang/String;
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceLocation(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public referenceNeedsLoading()I
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceNeedsLoading(J)I

    move-result v0

    return v0
.end method

.method public setReferenceVisible(IZ)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->setReferenceVisible(JIZ)V

    return-void
.end method
