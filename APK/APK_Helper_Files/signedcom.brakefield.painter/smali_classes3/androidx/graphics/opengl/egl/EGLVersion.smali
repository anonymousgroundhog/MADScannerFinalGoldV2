.class public final Landroidx/graphics/opengl/egl/EGLVersion;
.super Ljava/lang/Object;
.source "EGLSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/egl/EGLVersion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLVersion;",
        "",
        "major",
        "",
        "minor",
        "(II)V",
        "getMajor",
        "()I",
        "getMinor",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/opengl/egl/EGLVersion$Companion;

.field public static final Unknown:Landroidx/graphics/opengl/egl/EGLVersion;

.field public static final V14:Landroidx/graphics/opengl/egl/EGLVersion;

.field public static final V15:Landroidx/graphics/opengl/egl/EGLVersion;


# instance fields
.field private final major:I

.field private final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/graphics/opengl/egl/EGLVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/egl/EGLVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->Companion:Landroidx/graphics/opengl/egl/EGLVersion$Companion;

    .line 591
    new-instance v0, Landroidx/graphics/opengl/egl/EGLVersion;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/graphics/opengl/egl/EGLVersion;-><init>(II)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->V14:Landroidx/graphics/opengl/egl/EGLVersion;

    .line 597
    new-instance v0, Landroidx/graphics/opengl/egl/EGLVersion;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Landroidx/graphics/opengl/egl/EGLVersion;-><init>(II)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->V15:Landroidx/graphics/opengl/egl/EGLVersion;

    .line 603
    new-instance v0, Landroidx/graphics/opengl/egl/EGLVersion;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/graphics/opengl/egl/EGLVersion;-><init>(II)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLVersion;->Unknown:Landroidx/graphics/opengl/egl/EGLVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput p1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    .line 579
    iput p2, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/graphics/opengl/egl/EGLVersion;IIILjava/lang/Object;)Landroidx/graphics/opengl/egl/EGLVersion;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/opengl/egl/EGLVersion;->copy(II)Landroidx/graphics/opengl/egl/EGLVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    return v0
.end method

.method public final copy(II)Landroidx/graphics/opengl/egl/EGLVersion;
    .locals 1

    new-instance v0, Landroidx/graphics/opengl/egl/EGLVersion;

    invoke-direct {v0, p1, p2}, Landroidx/graphics/opengl/egl/EGLVersion;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/graphics/opengl/egl/EGLVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/graphics/opengl/egl/EGLVersion;

    iget v1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    iget v3, p1, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    iget p1, p1, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMajor()I
    .locals 1

    .line 578
    iget v0, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 579
    iget v0, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->vKfhbqr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/graphics/opengl/egl/EGLVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
