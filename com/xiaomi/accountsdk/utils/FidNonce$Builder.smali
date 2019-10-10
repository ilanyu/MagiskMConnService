.class public Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidNonce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .registers 5

    .line 44
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil;->a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .registers 7

    if-eqz p1, :cond_76

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return-object v0

    :cond_6
    if-nez p3, :cond_9

    return-object v0

    .line 61
    :cond_9
    :try_start_9
    invoke-interface {p3}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->a()Z

    move-result v1
    :try_end_d
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_9 .. :try_end_d} :catch_6f

    if-nez v1, :cond_10

    return-object v0

    .line 69
    :cond_10
    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->a:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    if-ne p1, v1, :cond_17

    const-string p1, "n"

    goto :goto_19

    :cond_17
    const-string p1, "wb"

    .line 70
    :goto_19
    invoke-interface {p2}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;->a()J

    move-result-wide v1

    .line 71
    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a(J)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_29
    const-string p2, "UTF-8"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_35} :catch_68

    :try_start_35
    const-string v2, "UTF-8"

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;->a([B)[B

    move-result-object p1
    :try_end_3f
    .catch Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException; {:try_start_35 .. :try_end_3f} :catch_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_3f} :catch_5a

    if-nez p1, :cond_42

    return-object v0

    .line 96
    :cond_42
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 100
    :try_start_46
    new-instance p3, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p3, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_4d} :catch_53

    .line 106
    new-instance p1, Lcom/xiaomi/accountsdk/utils/FidNonce;

    invoke-direct {p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/FidNonce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_53
    move-exception p1

    const-string p2, "FidNonce"

    .line 102
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_5a
    move-exception p1

    const-string p2, "FidNonce"

    .line 88
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_61
    move-exception p1

    const-string p2, "FidNonce"

    .line 85
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_68
    move-exception p1

    const-string p2, "FidNonce"

    .line 78
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_6f
    move-exception p1

    const-string p2, "FidNonce"

    .line 65
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 51
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 122
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/z;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(J)Ljava/lang/String;
    .registers 3

    .line 126
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/s;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tp"

    .line 112
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nonce"

    .line 113
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "v"

    .line 114
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    .line 117
    :catch_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not happen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
