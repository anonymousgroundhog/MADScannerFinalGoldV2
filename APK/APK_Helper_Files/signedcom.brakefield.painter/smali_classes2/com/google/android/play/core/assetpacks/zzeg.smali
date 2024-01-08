.class final Lcom/google/android/play/core/assetpacks/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzc:Lcom/google/android/play/core/internal/zzco;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzc:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzef;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zza:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzb:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzh:Ljava/io/InputStream;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zze:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    const/16 v3, 0x2000

    .line 4
    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    :goto_0
    :try_start_1
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbk;

    .line 5
    invoke-direct {v2, v0, v7}, Lcom/google/android/play/core/assetpacks/zzbk;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzc:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzd:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    .line 6
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v10, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzc:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzd:J

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzcn;

    .line 10
    invoke-direct {v3, v0, v10}, Lcom/google/android/play/core/assetpacks/zzcn;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/zzen;)V

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzg:J

    invoke-static {v2, v1, v3, v4, v5}, Lcom/google/android/play/core/internal/zzcl;->zza(Lcom/google/android/play/core/internal/zzcm;Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v10, v0}, Lcom/google/android/play/core/assetpacks/zzen;->zzi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v1, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Patching and extraction finished for slice %s of pack %s."

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 17
    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzy;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzk:I

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    .line 18
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/play/core/assetpacks/zzy;->zzg(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzh:Ljava/io/InputStream;

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 12
    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Could not close file for slice %s of pack %s."

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 19
    sget-object v1, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "IOException during patching %s."

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzck;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error patching slice %s of pack %s."

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzk:I

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method
