.class public Lcom/xiaomi/accountsdk/request/PassportCARequest;
.super Lcom/xiaomi/accountsdk/request/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;,
        Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;,
        Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.xiaomi.accountsdk.request.PassportCARequest"

.field private static final e:Ljava/lang/String; = "passport_ca_token"


# instance fields
.field private final b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

.field private final c:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    .line 38
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    .line 39
    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->c:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)Lcom/xiaomi/a/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/a/b/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 183
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->c(Ljava/lang/String;)Lcom/xiaomi/a/a/a;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_4} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_36
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4} :catch_2f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4} :catch_28
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_0 .. :try_end_4} :catch_1a
    .catch Lcom/xiaomi/accountsdk/request/k; {:try_start_0 .. :try_end_4} :catch_13
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_0 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 205
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_c
    move-exception p0

    .line 203
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_13
    move-exception p0

    .line 201
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1a
    move-exception p0

    .line 199
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_21
    move-exception p0

    .line 197
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_28
    move-exception p0

    .line 195
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2f
    move-exception p0

    .line 193
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_36
    move-exception p0

    .line 191
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3d
    move-exception p0

    .line 189
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_44
    move-exception p0

    .line 187
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4b
    move-exception p0

    .line 185
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Lcom/xiaomi/accountsdk/utils/h;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12e

    if-ne v1, v4, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 148
    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 153
    :try_start_17
    invoke-interface {p0, v0}, Lcom/xiaomi/accountsdk/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1b
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_17 .. :try_end_1b} :catch_4f

    .line 159
    new-instance v0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {v0, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(I)V

    .line 161
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/util/Map;

    move-result-object v1

    .line 162
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    :try_start_3f
    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/xiaomi/accountsdk/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_3f .. :try_end_4a} :catch_33

    goto :goto_33

    .line 170
    :cond_4b
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/util/Map;)V

    return-object v0

    :catch_4f
    move-exception p0

    .line 155
    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Ljava/lang/String;)Z

    move-result p1

    .line 156
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    if-nez v1, :cond_5a

    if-eqz p1, :cond_5b

    :cond_5a
    const/4 v2, 0x1

    :cond_5b
    const-string p1, "failed to decrypt response"

    invoke-direct {v0, p1, p0, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v0

    .line 149
    :cond_61
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const/4 p1, 0x0

    const-string v0, "invalid response from server"

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/utils/k;Lcom/xiaomi/accountsdk/utils/h;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/a/b/a;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/k;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 214
    invoke-interface {p2, v2}, Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    invoke-interface {p1, v1}, Lcom/xiaomi/accountsdk/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_0 .. :try_end_31} :catch_33

    goto :goto_8

    :cond_32
    return-void

    :catch_33
    move-exception p0

    .line 219
    new-instance p1, Lcom/xiaomi/a/b/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "html"

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->a()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    .line 49
    :try_start_11
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_15
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_11 .. :try_end_15} :catch_3d
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_11 .. :try_end_15} :catch_2b
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_11 .. :try_end_15} :catch_24
    .catch Lcom/xiaomi/a/b/a; {:try_start_11 .. :try_end_15} :catch_1d
    .catch Lcom/xiaomi/accountsdk/request/k; {:try_start_11 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    .line 70
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/k;)V

    throw v1

    :catch_1d
    move-exception v0

    .line 68
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/a/b/a;)V

    throw v1

    :catch_24
    move-exception v0

    .line 66
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/a;)V

    throw v1

    :catch_2b
    move-exception v1

    .line 59
    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    if-nez v2, :cond_37

    .line 60
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Lcom/xiaomi/accountsdk/request/c;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    .line 63
    :cond_37
    new-instance v0, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/c;)V

    throw v0

    :catch_3d
    move-exception v1

    .line 52
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaomi/accountsdk/request/c;

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    if-nez v2, :cond_57

    .line 53
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->d:Z

    .line 54
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Lcom/xiaomi/accountsdk/request/c;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    .line 56
    :cond_57
    throw v1

    .line 45
    :cond_58
    new-instance v0, Lcom/xiaomi/accountsdk/request/p;

    new-instance v1, Lcom/xiaomi/a/b/a;

    const-string v2, "null CA Manager"

    invoke-direct {v1, v2}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/a/b/a;)V

    throw v0
.end method

.method a(Lcom/xiaomi/accountsdk/request/c;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passportCA"

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 227
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->c()V

    .line 228
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    return-object p1

    :cond_18
    const-string v1, "passportCA-Disabled"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 233
    :try_start_20
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_30

    :catch_29
    move-exception p1

    .line 235
    sget-object v0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 238
    :goto_30
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->a(Ljava/lang/Long;)V

    .line 239
    new-instance p1, Lcom/xiaomi/accountsdk/request/p;

    new-instance v0, Lcom/xiaomi/a/b/a;

    const-string v1, "PassportCA Disabled"

    invoke-direct {v0, v1}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/a/b/a;)V

    throw p1

    .line 241
    :cond_44
    new-instance v0, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/c;)V

    throw v0
.end method

.method b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->c:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-object v0
.end method

.method c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/a/b/a;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->c()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 110
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v0

    .line 111
    iget-object v1, v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    .line 114
    iget-object v2, v1, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->b()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)Lcom/xiaomi/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 115
    invoke-virtual {v2}, Lcom/xiaomi/a/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 120
    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "_nonce"

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "passport_ca_token"

    iget-object v5, v2, Lcom/xiaomi/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "caTag"

    const-string v5, "noSafe"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v3, Lcom/xiaomi/accountsdk/utils/b;

    iget-object v4, v2, Lcom/xiaomi/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/xiaomi/accountsdk/utils/b;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    new-instance v5, Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;-><init>(Lcom/xiaomi/accountsdk/request/PassportCARequest$1;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Lcom/xiaomi/accountsdk/utils/k;Lcom/xiaomi/accountsdk/utils/h;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V

    .line 128
    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    new-instance v5, Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;-><init>(Lcom/xiaomi/accountsdk/request/PassportCARequest$1;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Lcom/xiaomi/accountsdk/utils/k;Lcom/xiaomi/accountsdk/utils/h;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V

    .line 131
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    iget-object v2, v2, Lcom/xiaomi/a/a/a;->b:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "_caSign"

    invoke-virtual {v1, v4, v2}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Lcom/xiaomi/accountsdk/request/RequestWithIP;

    new-instance v2, Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;-><init>()V

    new-instance v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;-><init>()V

    invoke-direct {v1, v0, v2, v4}, Lcom/xiaomi/accountsdk/request/RequestWithIP;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/request/IPStrategy;Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V

    .line 137
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/n;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 142
    invoke-static {v3, v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->a(Lcom/xiaomi/accountsdk/utils/h;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    .line 140
    :cond_8a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_92
    new-instance v0, Lcom/xiaomi/a/b/a;

    const-string v1, "null CA token"

    invoke-direct {v0, v1}, Lcom/xiaomi/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "https request should not use PassportCA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
