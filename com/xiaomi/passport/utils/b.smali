.class public Lcom/xiaomi/passport/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PhoneLoginPreferenceConfig"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/data/LoginPreference;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/i;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "phone"

    .line 39
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "region"

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 41
    sget-object p1, Lcom/xiaomi/passport/utils/c;->a:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-static {p1, p0, v0, v1}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 47
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 49
    :try_start_23
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "description"

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_47

    const p1, 0x11178

    if-eq v0, p1, :cond_41

    .line 62
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p1

    .line 60
    :cond_41
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/i;

    invoke-direct {p1, v1}, Lcom/xiaomi/accountsdk/account/a/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    const-string v0, "data"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "idcZone"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userRegion"

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 57
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v2, Lcom/xiaomi/passport/data/LoginPreference;

    invoke-static {p1}, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/xiaomi/passport/data/LoginPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_68} :catch_69

    return-object v2

    :catch_69
    move-exception p1

    const-string v0, "PhoneLoginPreferenceConfig"

    const-string v1, "realBody"

    .line 65
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_77
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "result content is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method
