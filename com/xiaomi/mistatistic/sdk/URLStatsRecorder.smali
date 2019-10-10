.class public Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->d:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    .line 43
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "file"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "ftp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "jar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2

    .line 237
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 238
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    .line 240
    :cond_c
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_18

    .line 241
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    :cond_18
    return-object p0
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/controller/a;)V
    .registers 2

    .line 102
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/controller/a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/data/b;)V
    .registers 2

    .line 110
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    return-void
.end method

.method public static a()Z
    .registers 7

    .line 53
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "MI_STAT"

    const-string v2, "The statistics is disabled."

    .line 54
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 57
    :cond_f
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 58
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 62
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 63
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/net/URL;

    const-string v4, "www.xiaomi.com"

    const-string v5, ""

    invoke-direct {v3, v2, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 67
    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4d

    .line 68
    const-class v0, Ljava/net/URL;

    const-string v2, "handlers"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_55

    .line 70
    :cond_4d
    const-class v0, Ljava/net/URL;

    const-string v2, "streamHandlers"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_55
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 74
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLStreamHandler;

    .line 76
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 78
    :cond_7e
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;-><init>()V

    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_8c} :catch_8d

    goto :goto_99

    :catch_8d
    move-exception v0

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    const-string v1, "failed to enable url interceptor"

    .line 92
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_99
    :goto_99
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .registers 5

    .line 118
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_4d

    .line 122
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/data/b;

    .line 124
    :try_start_21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/b;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_4b} :catch_15

    goto :goto_15

    :cond_4c
    return-void

    :cond_4d
    :goto_4d
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .registers 1

    .line 34
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    return-object v0
.end method
