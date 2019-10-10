.class public Lmiui/cloud/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 48
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 53
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    .line 54
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_16

    .line 59
    invoke-static {v0}, Lmiui/cloud/common/b;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_16
    const/4 p0, 0x1

    .line 56
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "Bad JSON stored in shared preference. "

    aput-object v0, p0, p1

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 6

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_9

    .line 72
    :cond_1c
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2a

    .line 73
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 74
    :cond_2a
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_38

    .line 75
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9

    .line 76
    :cond_38
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_46

    .line 77
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    .line 78
    :cond_46
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_54

    .line 79
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 80
    :cond_54
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_9

    .line 81
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lmiui/cloud/common/b;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_62
    return-object v0
.end method

.method private static a(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 6

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_d

    .line 35
    :cond_20
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_49

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_49

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2d

    goto :goto_49

    .line 37
    :cond_2d
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3b

    .line 38
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 39
    :cond_3b
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_d

    .line 40
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lmiui/cloud/common/b;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 36
    :cond_49
    :goto_49
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_4d
    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-static {p2}, Lmiui/cloud/common/b;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
