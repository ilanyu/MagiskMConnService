.class public Lcom/xiaomi/micloudsdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/micloudsdk/c/d;)I
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Landroid/content/Context;Lcom/xiaomi/micloudsdk/c/d;)I

    move-result p0

    return p0
.end method

.method public static a(Z)I
    .registers 1

    .line 57
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Z)I

    move-result p0

    return p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 89
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 25
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3c

    .line 96
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 99
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_12

    .line 104
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_12

    .line 108
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 113
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    :goto_3c
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/m;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    .line 29
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b()Z

    move-result v0

    return v0
.end method

.method public static c()Landroid/accounts/Account;
    .registers 1

    .line 70
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
