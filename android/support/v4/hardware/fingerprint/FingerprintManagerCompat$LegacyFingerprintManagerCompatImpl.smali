.class Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyFingerprintManagerCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 7

    return-void
.end method

.method public hasEnrolledFingerprints(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isHardwareDetected(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
