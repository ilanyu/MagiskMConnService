.class public Lcn/kuaipan/android/http/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 14
    iget-object p2, p0, Lcn/kuaipan/android/http/client/a;->a:[Ljava/security/cert/X509Certificate;

    if-nez p2, :cond_6

    .line 15
    iput-object p1, p0, Lcn/kuaipan/android/http/client/a;->a:[Ljava/security/cert/X509Certificate;

    :cond_6
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 22
    iget-object p2, p0, Lcn/kuaipan/android/http/client/a;->a:[Ljava/security/cert/X509Certificate;

    if-nez p2, :cond_6

    .line 23
    iput-object p1, p0, Lcn/kuaipan/android/http/client/a;->a:[Ljava/security/cert/X509Certificate;

    :cond_6
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
