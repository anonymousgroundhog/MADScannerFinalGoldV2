.class public Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fido@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

.field private final zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

.field private final zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

.field private final zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

.field private final zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

.field private final zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

.field private final zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

.field private final zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

.field private final zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;Lcom/google/android/gms/fido/fido2/api/common/zzp;Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;Lcom/google/android/gms/fido/fido2/api/common/zzw;Lcom/google/android/gms/fido/fido2/api/common/zzy;Lcom/google/android/gms/fido/fido2/api/common/zzaa;Lcom/google/android/gms/fido/fido2/api/common/zzr;Lcom/google/android/gms/fido/fido2/api/common/zzad;Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    iput-object p4, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    iput-object p5, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    iput-object p6, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    iput-object p7, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    iput-object p8, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    iput-object p9, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getFidoAppIdExtension()Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    return-object v0
.end method

.method public getUserVerificationMethodExtension()Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza:Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->getFidoAppIdExtension()Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->getUserVerificationMethodExtension()Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    .line 10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    .line 11
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/fido/fido2/api/common/zzp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzp;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/fido/fido2/api/common/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/zzr;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/fido/fido2/api/common/zzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzd:Lcom/google/android/gms/fido/fido2/api/common/zzw;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/fido/fido2/api/common/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zze:Lcom/google/android/gms/fido/fido2/api/common/zzy;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/fido/fido2/api/common/zzaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzi:Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/fido/fido2/api/common/zzad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/zzad;

    return-object v0
.end method
