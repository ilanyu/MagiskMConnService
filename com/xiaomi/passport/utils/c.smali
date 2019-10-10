.class public Lcom/xiaomi/passport/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "PassportOnlinePreference"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pass/preference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/utils/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/passport/data/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/xiaomi/passport/utils/c;->a:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    invoke-static {v0, v1, v1, v2}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 31
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {v1}, Lcom/xiaomi/passport/data/a;->a(Lorg/json/JSONObject;)Lcom/xiaomi/passport/data/a;

    move-result-object v1
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-object v1

    :catch_1c
    move-exception v1

    const-string v2, "PassportOnlinePreference"

    const-string v3, "realBody"

    .line 36
    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    new-instance v1, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_2a
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "result content is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method
