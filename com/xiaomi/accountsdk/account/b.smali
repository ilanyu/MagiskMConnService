.class public Lcom/xiaomi/accountsdk/account/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DeviceInfoHelper"

.field private static final b:Ljava/lang/Integer;

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/b;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/d;
    .registers 3

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_50

    .line 182
    :cond_d
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/data/d;-><init>(Ljava/lang/String;)V

    .line 184
    :try_start_12
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fullImageUrl"

    .line 185
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/d;->a(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_34

    const-string p1, "default"

    .line 189
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_34
    if-eqz p1, :cond_4f

    const-string p0, "modelName"

    .line 192
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/d;->c(Ljava/lang/String;)V

    const-string p0, "deviceName"

    .line 193
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/d;->b(Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_48} :catch_49

    goto :goto_4f

    :catch_49
    move-exception p0

    const-string p1, "DeviceInfoHelper"

    .line 196
    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-object v0

    :cond_50
    :goto_50
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            ")",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2f

    .line 320
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "serviceToken"

    .line 321
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "userId"

    .line 323
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    goto :goto_2e

    :cond_25
    const-string v1, "cUserId"

    .line 325
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :goto_2e
    return-object v0

    .line 318
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "passportInfo is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    if-eqz p0, :cond_a7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 112
    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    .line 116
    :cond_23
    new-instance p1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v2, "meta"

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 119
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->q:Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, v2, v3, p0}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_9f

    const-string p1, "code"

    .line 124
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "DeviceInfoHelper"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceList code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v1, Lcom/xiaomi/accountsdk/account/b;->b:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "data"

    .line 127
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 128
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_9e

    .line 129
    check-cast p0, Ljava/util/Map;

    const-string p1, "all_device_settings"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 130
    instance-of p1, p0, Ljava/util/ArrayList;

    if-eqz p1, :cond_9e

    .line 131
    check-cast p0, Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 133
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/util/HashMap;)V

    goto :goto_8d

    :cond_9d
    return-object p0

    :cond_9e
    return-object v0

    .line 122
    :cond_9f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get devices list"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null passportInfo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/l;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    :try_start_d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 167
    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_3c

    .line 168
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/l;

    const-string v4, "simId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/xiaomi/accountsdk/account/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_31} :catch_34

    add-int/lit8 p0, p0, 0x1

    goto :goto_13

    :catch_34
    move-exception p0

    const-string v1, "DeviceInfoHelper"

    const-string v2, "setPhoneInfo"

    .line 173
    invoke-static {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_e5

    if-eqz p2, :cond_e3

    .line 61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_e3

    .line 65
    :cond_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 66
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15

    .line 70
    :cond_29
    new-instance p2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string v1, "devId"

    .line 72
    invoke-virtual {p2, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "meta"

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->p:Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_db

    const-string p1, "code"

    .line 79
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "DeviceInfoHelper"

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object p2, Lcom/xiaomi/accountsdk/account/b;->b:Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "data"

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_c0

    .line 84
    check-cast p1, Ljava/util/Map;

    const-string p2, "settings"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 85
    instance-of p2, p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_c0

    .line 86
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 87
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v0, "name"

    .line 89
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 91
    :cond_bc
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/util/HashMap;)V

    return-object p0

    .line 96
    :cond_c0
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to get device info : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_db
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get device info"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e3
    :goto_e3
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_e5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null passportInfo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    if-eqz p0, :cond_b0

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 277
    :cond_e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 278
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v3, "models"

    .line 279
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 280
    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->o:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 285
    :try_start_2c
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    .line 286
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "data"

    .line 287
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 289
    :goto_4c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_95

    .line 290
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 291
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 292
    new-instance v7, Lcom/xiaomi/accountsdk/account/data/d;

    invoke-direct {v7, v5}, Lcom/xiaomi/accountsdk/account/data/d;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v7, v5}, Lcom/xiaomi/accountsdk/account/data/d;->c(Ljava/lang/String;)V

    if-eqz v6, :cond_8f

    const-string v8, "fullImageUrl"

    .line 296
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/accountsdk/account/data/d;->a(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_7b

    const-string v8, "default"

    .line 299
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    :cond_7b
    if-eqz v8, :cond_8f

    const-string v6, "deviceName"

    .line 302
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/xiaomi/accountsdk/account/data/d;->b(Ljava/lang/String;)V

    const-string v6, "modelName"

    .line 303
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/xiaomi/accountsdk/account/data/d;->c(Ljava/lang/String;)V

    .line 306
    :cond_8f
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_92} :catch_96

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_95
    return-object v0

    :catch_96
    move-exception p0

    const-string v0, "DeviceInfoHelper"

    const-string v2, "fail to parse JSONObject"

    .line 310
    invoke-static {v0, v2, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_a8
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "failed to getModelInfos"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 238
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 239
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_2c
    const-string v4, "name"

    .line 244
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    .line 245
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v1

    const-string v2, "DeviceInfoHelper"

    const-string v4, "convertDevSettingValues"

    .line 247
    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :goto_3f
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_43
    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "_phoneInfo"

    .line 150
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v0, "_phoneInfo"

    const-string v1, "_phoneInfo"

    .line 152
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const-string v0, "model"

    .line 154
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v0, "model_info"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v0, "model_info"

    const-string v1, "model"

    .line 156
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model_info"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/d;

    move-result-object v1

    .line 155
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_69

    if-eqz p2, :cond_69

    .line 214
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p2

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    .line 216
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "devId"

    .line 217
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 218
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object p1, Lcom/xiaomi/accountsdk/account/g;->p:Ljava/lang/String;

    .line 221
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 220
    invoke-static {p1, v0, p2, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_61

    const-string p1, "code"

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 226
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lcom/xiaomi/accountsdk/account/b;->b:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    return v1

    :cond_49
    const-string p0, "DeviceInfoHelper"

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed upload dev name, code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 223
    :cond_61
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to upload device settings info"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p4, p5}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
