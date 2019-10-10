.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;,
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$URLs;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "ssecurity"

.field private static final B:Ljava/lang/String; = "GuestAccountOnlineFetch"

.field static final a:Ljava/lang/String; = "BEYBuDbVZqYHzAVT+TAAAA=="

.field private static final b:Ljava/lang/String; = "sid"

.field private static final c:Ljava/lang/String; = "psid"

.field private static final d:Ljava/lang/String; = "visitorType"

.field private static final e:Ljava/lang/String; = "appPackage"

.field private static final f:Ljava/lang/String; = "clientInfo"

.field private static final g:Ljava/lang/String; = "visitorDeviceId"

.field private static final h:Ljava/lang/String; = "visitorSdkVersion"

.field private static final i:Ljava/lang/String; = "fidNonce"

.field private static final j:Ljava/lang/String; = "fidNonceSign"

.field private static final k:Ljava/lang/String; = "callback"

.field private static final l:Ljava/lang/String; = "visitorPassToken"

.field private static final m:Ljava/lang/String; = "visitorId"

.field private static final n:Ljava/lang/String; = "_sign"

.field private static final o:Ljava/lang/String; = "visitorType"

.field private static final p:Ljava/lang/String; = "visitorId"

.field private static final q:Ljava/lang/String; = "cVisitorId"

.field private static final r:Ljava/lang/String; = "visitorPassToken"

.field private static final s:Ljava/lang/String; = "code"

.field private static final t:Ljava/lang/String; = "result"

.field private static final u:Ljava/lang/String; = "data"

.field private static final v:Ljava/lang/String; = "_serviceToken"

.field private static final w:Ljava/lang/String; = "_slh"

.field private static final x:Ljava/lang/String; = "_ph"

.field private static final y:Ljava/lang/String; = "callback"

.field private static final z:Ljava/lang/String; = "visitorId"


# instance fields
.field private final C:Landroid/content/Context;

.field private D:Lcom/xiaomi/accountsdk/guestaccount/f;

.field private E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    .line 93
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/g;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/g;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;

    .line 94
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->C:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 365
    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 366
    iget v0, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_17

    .line 370
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    iget p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object v0

    .line 367
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawresponse.responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 100"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_35
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 373
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4e

    .line 375
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1

    :cond_4e
    const-string v2, "result"

    .line 377
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    .line 378
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_67

    .line 379
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1

    :cond_67
    const-string v2, "data"

    .line 381
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_79

    .line 383
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1

    .line 387
    :cond_79
    :try_start_79
    new-instance v2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->c:Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_80} :catch_81

    goto :goto_8a

    :catch_81
    move-exception p1

    const-string v2, "GuestAccountOnlineFetch"

    const-string v3, ""

    .line 389
    invoke-static {v2, v3, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 392
    :goto_8a
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    invoke-direct {p1, v1, v0, v2, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;

    move-result-object p1

    .line 354
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    move-result-object p1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    const-string p2, "GuestAccountOnlineFetch"

    .line 359
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1

    :catch_1d
    move-exception p1

    const-string p2, "GuestAccountOnlineFetch"

    .line 356
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "macAddress"

    .line 113
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/f;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bluetooth"

    .line 114
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 115
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    return-object v0

    .line 118
    :catch_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "staging.flag"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 75
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "http://visitor.preview.n.xiaomi.net/visitor/register"

    goto :goto_b

    :cond_9
    const-string p0, "https://v.id.mi.com/visitor/register"

    :goto_b
    return-object p0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 79
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "http://visitor.preview.n.xiaomi.net/visitor/login"

    goto :goto_b

    :cond_9
    const-string p0, "https://v.id.mi.com/visitor/login"

    :goto_b
    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;
    .registers 4

    const/4 v0, 0x0

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;

    invoke-interface {v1, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;

    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    move-result-object p1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    const-string v1, "GuestAccountOnlineFetch"

    .line 344
    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1

    :catch_1d
    move-exception p1

    const-string v1, "GuestAccountOnlineFetch"

    .line 341
    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V

    return-object p1
.end method


# virtual methods
.method a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 8

    .line 278
    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    if-eqz v0, :cond_e5

    .line 283
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;

    move-result-object v0

    .line 284
    iget v1, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_b6

    .line 288
    iget v1, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_24

    .line 289
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget v0, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 291
    :cond_24
    iget-object v1, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    const/4 v2, 0x5

    if-nez v1, :cond_33

    .line 292
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 295
    :cond_33
    iget-object v1, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    const-string v3, "serviceToken"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 297
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 302
    :cond_4d
    iget-object v2, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    const-string v3, "cVisitorId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    iget-object v3, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    iget-object v0, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    new-instance v4, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    iget-object v5, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 307
    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v4

    .line 308
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_86

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    :cond_86
    invoke-virtual {v4, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v2

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    .line 309
    invoke-virtual {v2, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v2

    .line 310
    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    .line 312
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 314
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    .line 316
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 285
    :cond_b6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawresponse.responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 100"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d4} :catch_d4

    :catch_d4
    move-exception p1

    const-string v0, "GuestAccountOnlineFetch"

    .line 318
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 279
    :cond_e5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "guestAccount.callback == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 11

    .line 207
    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    if-eqz v0, :cond_127

    .line 210
    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    if-eqz v0, :cond_11f

    .line 213
    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    if-eqz v0, :cond_117

    .line 217
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sid"

    .line 220
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "visitorId"

    .line 221
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "callback"

    .line 223
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string p2, "nonce"

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/g;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {p2}, Lcom/xiaomi/accountsdk/guestaccount/f;->b()Ljava/lang/String;

    move-result-object p2

    .line 228
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "visitorDeviceId"

    .line 229
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "visitorSdkVersion"

    const-string v3, "0.0.4"

    .line 230
    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "visitorPassToken"

    .line 231
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 234
    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 235
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string v3, "POST"

    const-string v4, "BEYBuDbVZqYHzAVT+TAAAA=="

    .line 236
    invoke-static {v3, v0, p2, v4}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "_sign"

    .line 237
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :try_start_77
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    move-result-object p2

    .line 243
    iget-object v0, p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_8f

    .line 244
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object p2, p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->a:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 246
    :cond_8f
    iget-object v0, p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->b:Lorg/json/JSONObject;

    const-string v1, "visitorId"

    .line 247
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cVisitorId"

    .line 248
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "visitorPassToken"

    .line 249
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    iget-object v5, p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->c:Lorg/json/JSONObject;

    if-nez v5, :cond_b3

    const/4 p2, 0x0

    goto :goto_bb

    :cond_b3
    iget-object p2, p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->c:Lorg/json/JSONObject;

    const-string v5, "ssecurity"

    .line 253
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 254
    :goto_bb
    iget-object v5, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    iget-object v6, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "callback"

    .line 256
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v7, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v7}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    .line 258
    invoke-virtual {v7, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v6}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    .line 268
    new-instance p2, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1
    :try_end_10d
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_10d} :catch_10e

    return-object p1

    :catch_10e
    move-exception p1

    const-string p2, "GuestAccountOnlineFetch"

    .line 272
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/b;->q:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object p1

    .line 214
    :cond_117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "guestAccount.passToken == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_11f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "guestAccount.userId == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "guestAccount.sid == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/xiaomi/accountsdk/guestaccount/data/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 12

    if-nez p1, :cond_4

    .line 123
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/f;->a()Lcom/xiaomi/accountsdk/utils/l;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 125
    iget-object v1, v0, Lcom/xiaomi/accountsdk/utils/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/xiaomi/accountsdk/utils/l;->b:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 126
    :cond_14
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    .line 128
    :cond_16
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a()Ljava/lang/String;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->C:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v4}, Lcom/xiaomi/accountsdk/guestaccount/f;->b()Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "visitorType"

    .line 135
    iget p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->c:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sid"

    .line 136
    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "psid"

    .line 137
    invoke-virtual {v5, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appPackage"

    .line 138
    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "clientInfo"

    .line 140
    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "callback"

    .line 143
    invoke-virtual {v5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    const-string p1, "nonce"

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Lcom/xiaomi/accountsdk/utils/g;->a(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "visitorDeviceId"

    .line 148
    invoke-virtual {p1, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "visitorSdkVersion"

    const-string p4, "0.0.4"

    .line 149
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_9b

    .line 150
    iget-object p3, v0, Lcom/xiaomi/accountsdk/utils/l;->a:Ljava/lang/String;

    if-eqz p3, :cond_9b

    iget-object p3, v0, Lcom/xiaomi/accountsdk/utils/l;->b:Ljava/lang/String;

    if-eqz p3, :cond_9b

    const-string p3, "fidNonce"

    .line 151
    iget-object p4, v0, Lcom/xiaomi/accountsdk/utils/l;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "fidNonceSign"

    .line 152
    iget-object p4, v0, Lcom/xiaomi/accountsdk/utils/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_9b
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 157
    invoke-virtual {p3, v5}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 158
    invoke-virtual {p3, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string p4, "POST"

    const-string v0, "BEYBuDbVZqYHzAVT+TAAAA=="

    .line 159
    invoke-static {p4, v3, p3, v0}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "_sign"

    .line 160
    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :try_start_b3
    invoke-direct {p0, v3, v5, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;

    move-result-object p1

    .line 166
    iget-object p3, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->a:Ljava/lang/Integer;

    if-eqz p3, :cond_cb

    .line 167
    new-instance p2, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1

    .line 169
    :cond_cb
    iget-object p3, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->b:Lorg/json/JSONObject;

    const-string p4, "visitorType"

    .line 170
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p4

    .line 172
    invoke-static {p4}, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object p4

    if-nez p4, :cond_dc

    .line 174
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/b;->q:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object p1

    :cond_dc
    const-string v0, "visitorPassToken"

    .line 176
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "visitorId"

    .line 177
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cVisitorId"

    .line 178
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->c:Lorg/json/JSONObject;

    if-nez v4, :cond_fc

    const/4 p1, 0x0

    goto :goto_104

    :cond_fc
    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->c:Lorg/json/JSONObject;

    const-string v4, "ssecurity"

    .line 181
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    :goto_104
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "callback"

    .line 184
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 185
    new-instance v6, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    .line 186
    invoke-virtual {v6, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p2

    .line 189
    invoke-virtual {p2, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p2

    .line 190
    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    .line 197
    new-instance p2, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1
    :try_end_154
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_154} :catch_155

    return-object p1

    :catch_155
    move-exception p1

    const-string p2, "GuestAccountOnlineFetch"

    .line 201
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/b;->q:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_serviceToken"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 101
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->E:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;

    return-void

    .line 99
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/xiaomi/accountsdk/guestaccount/f;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 108
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->D:Lcom/xiaomi/accountsdk/guestaccount/f;

    return-void

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hardwareInfoFetcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_slh"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ph"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
