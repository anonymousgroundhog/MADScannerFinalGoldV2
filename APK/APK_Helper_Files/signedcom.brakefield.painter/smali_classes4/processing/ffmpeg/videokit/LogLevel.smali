.class public final enum Lprocessing/ffmpeg/videokit/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lprocessing/ffmpeg/videokit/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lprocessing/ffmpeg/videokit/LogLevel;

.field public static final enum ERRORS_ONLY:Lprocessing/ffmpeg/videokit/LogLevel;

.field public static final enum FULL:Lprocessing/ffmpeg/videokit/LogLevel;

.field public static final enum NO_LOG:Lprocessing/ffmpeg/videokit/LogLevel;


# instance fields
.field private final integerValue:I


# direct methods
.method private static synthetic $values()[Lprocessing/ffmpeg/videokit/LogLevel;
    .locals 3

    .line 7
    sget-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->NO_LOG:Lprocessing/ffmpeg/videokit/LogLevel;

    sget-object v1, Lprocessing/ffmpeg/videokit/LogLevel;->ERRORS_ONLY:Lprocessing/ffmpeg/videokit/LogLevel;

    sget-object v2, Lprocessing/ffmpeg/videokit/LogLevel;->FULL:Lprocessing/ffmpeg/videokit/LogLevel;

    filled-new-array {v0, v1, v2}, [Lprocessing/ffmpeg/videokit/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lprocessing/ffmpeg/videokit/LogLevel;

    const-string v1, "NO_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lprocessing/ffmpeg/videokit/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->NO_LOG:Lprocessing/ffmpeg/videokit/LogLevel;

    new-instance v0, Lprocessing/ffmpeg/videokit/LogLevel;

    const-string v1, "ERRORS_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lprocessing/ffmpeg/videokit/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->ERRORS_ONLY:Lprocessing/ffmpeg/videokit/LogLevel;

    new-instance v0, Lprocessing/ffmpeg/videokit/LogLevel;

    const-string v1, "FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lprocessing/ffmpeg/videokit/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->FULL:Lprocessing/ffmpeg/videokit/LogLevel;

    .line 7
    invoke-static {}, Lprocessing/ffmpeg/videokit/LogLevel;->$values()[Lprocessing/ffmpeg/videokit/LogLevel;

    move-result-object v0

    sput-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->$VALUES:[Lprocessing/ffmpeg/videokit/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lprocessing/ffmpeg/videokit/LogLevel;->integerValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/LogLevel;
    .locals 1

    .line 7
    const-class v0, Lprocessing/ffmpeg/videokit/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lprocessing/ffmpeg/videokit/LogLevel;

    return-object p0
.end method

.method public static values()[Lprocessing/ffmpeg/videokit/LogLevel;
    .locals 1

    .line 7
    sget-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->$VALUES:[Lprocessing/ffmpeg/videokit/LogLevel;

    invoke-virtual {v0}, [Lprocessing/ffmpeg/videokit/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lprocessing/ffmpeg/videokit/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lprocessing/ffmpeg/videokit/LogLevel;->integerValue:I

    return v0
.end method
