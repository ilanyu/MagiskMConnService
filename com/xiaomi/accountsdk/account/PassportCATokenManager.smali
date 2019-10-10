.class public Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PassportCATokenManager"

.field private static final b:J = 0x15180L

.field private static final c:J = 0x93a80L

.field private static d:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;


# instance fields
.field private e:Lcom/xiaomi/accountsdk/account/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    return-void
.end method

.method public static d()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
    .registers 1

    .line 186
    sget-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/d;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 182
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    return-void

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "passportCAExternal should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Long;)V
    .registers 8

    .line 59
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    if-eqz v0, :cond_2f

    if-nez p1, :cond_e

    const-wide/32 v0, 0x15180

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1d

    .line 62
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x93a80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 69
    :cond_1d
    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 70
    iget-object p1, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/accountsdk/account/d;->a(J)V

    :cond_2f
    return-void
.end method

.method public a()Z
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz v0, :cond_a

    goto :goto_1c

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/accountsdk/account/d;->b(J)J

    move-result-wide v2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    return v1
.end method

.method public b()Lcom/xiaomi/a/a/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/a/b/a;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    if-eqz v0, :cond_35

    .line 144
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/account/d;->a()Lcom/xiaomi/a/a/a;

    move-result-object v0

    if-nez v0, :cond_34

    .line 146
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;-><init>()V

    .line 149
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a()V

    .line 151
    :try_start_1f
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->b(Ljava/lang/String;)Lcom/xiaomi/a/a/a;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2f

    .line 153
    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a(Lcom/xiaomi/a/a/a;)V

    if-eqz v1, :cond_2d

    .line 164
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/d;->a(Lcom/xiaomi/a/a/a;)V

    :cond_2d
    move-object v0, v1

    goto :goto_34

    :catchall_2f
    move-exception v1

    .line 153
    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a(Lcom/xiaomi/a/a/a;)V

    throw v1

    :cond_34
    :goto_34
    return-object v0

    .line 141
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/lang/String;)Lcom/xiaomi/a/a/a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/a/b/a;
        }
    .end annotation

    const-string v0, "https://%s/ca/getTokenCA"

    const/4 v1, 0x1

    .line 80
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "deviceId"

    .line 83
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 85
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v3, "_ver"

    .line 86
    sget-object v4, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v3, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    .line 89
    invoke-virtual {v3, p1}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/util/Map;)V

    .line 91
    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/o;->d(Ljava/util/Map;)V

    .line 92
    invoke-virtual {v3, v1}, Lcom/xiaomi/accountsdk/request/o;->a(Z)V

    .line 93
    new-instance p1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {p1, v3}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 97
    :try_start_3c
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->e()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1
    :try_end_40
    .catch Lcom/xiaomi/accountsdk/account/a/g; {:try_start_3c .. :try_end_40} :catch_a8
    .catch Lcom/xiaomi/accountsdk/account/a/l; {:try_start_3c .. :try_end_40} :catch_a1
    .catch Lcom/xiaomi/accountsdk/account/a/q; {:try_start_3c .. :try_end_40} :catch_9a
    .catch Lcom/xiaomi/accountsdk/account/a/n; {:try_start_3c .. :try_end_40} :catch_93
    .catch Lcom/xiaomi/accountsdk/account/a/o; {:try_start_3c .. :try_end_40} :catch_8c

    .line 110
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 112
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_69

    const-string p1, "data"

    .line 114
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "passport_ca_token"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "casecurity"

    .line 116
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v1, Lcom/xiaomi/a/a/a;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_69
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_84

    .line 120
    new-instance v0, Lcom/xiaomi/a/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "when getting Token server returns code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_84
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "error result"

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_8c
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_93
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_9a
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_a1
    move-exception p1

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_a8
    move-exception p1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/a/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/a/b/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->b()Lcom/xiaomi/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->e:Lcom/xiaomi/accountsdk/account/d;

    sget-object v1, Lcom/xiaomi/a/a/a;->c:Lcom/xiaomi/a/a/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/d;->a(Lcom/xiaomi/a/a/a;)V

    return-void

    .line 172
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
