.class public Lmiui/cloud/sync/MiCloudStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;,
        Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiCloudStatusInfo"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    .registers 10

    const-string v0, ""

    const-string v1, "localized_name"

    .line 161
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 163
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_f
    move-object v4, v0

    const-string v0, "used"

    .line 165
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 166
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_23

    .line 167
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    :goto_21
    move-wide v5, v0

    goto :goto_31

    .line 169
    :cond_23
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2e

    .line 170
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_21

    :cond_2e
    const-wide/16 v0, 0x0

    goto :goto_21

    .line 172
    :goto_31
    new-instance p2, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p2
.end method

.method public static a(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 5

    .line 84
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const-string v1, "extra_micloud_status_info_quota"

    .line 89
    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Lmiui/cloud/sync/MiCloudStatusInfo;

    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->d()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 96
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_36

    :cond_28
    const-string v1, "MiCloudStatusInfo"

    const-string v3, "deserialize failed"

    .line 98
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extra_micloud_status_info_quota"

    const-string v3, ""

    .line 99
    invoke-virtual {v0, p0, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-object v2
.end method

.method private b(Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 23

    move-object/from16 v0, p1

    const-string v1, ""

    const-string v2, ""

    const-string v3, "total"

    .line 113
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    instance-of v4, v3, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1a

    .line 115
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_1b

    :cond_1a
    move-wide v9, v5

    :goto_1b
    const-string v3, "used"

    .line 117
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2e

    .line 119
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    :goto_2c
    move-wide v11, v3

    goto :goto_3a

    .line 121
    :cond_2e
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_39

    .line 122
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2c

    :cond_39
    move-wide v11, v5

    :goto_3a
    const-string v3, "warn"

    .line 124
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_47

    .line 126
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    :cond_47
    move-object v13, v1

    const-string v1, "yearlyPackageType"

    .line 128
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_55

    .line 130
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_55
    move-object v14, v2

    const-string v1, "yearlyPackageSize"

    .line 132
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_68

    .line 134
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_69

    :cond_68
    move-wide v15, v5

    :goto_69
    const-string v1, "yearlyPackageCreateTime"

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_7c

    .line 138
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v17, v1

    goto :goto_7e

    :cond_7c
    move-wide/from16 v17, v5

    :goto_7e
    const-string v1, "yearlyPackageExpireTime"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_8e

    .line 142
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_8e
    move-wide/from16 v19, v5

    .line 144
    new-instance v1, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v20}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V

    const-string v2, "items"

    .line 146
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_c8

    .line 148
    check-cast v0, Ljava/util/Map;

    .line 149
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 150
    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object/from16 v5, p0

    invoke-direct {v5, v3, v4}, Lmiui/cloud/sync/MiCloudStatusInfo;->a(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->a(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V

    goto :goto_ac

    :cond_c8
    move-object/from16 v5, p0

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string p1, "MiCloudStatusInfo"

    const-string v0, "parseQuotaString() quota is empty."

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    return-void

    .line 48
    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/a/a/a;->a(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    const-string p1, "MiCloudStatusInfo"

    const-string v0, "catch JSONException in parseQuotaString()"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    :goto_26
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4

    const-string v0, "quota"

    .line 64
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 66
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lmiui/cloud/sync/MiCloudStatusInfo;->b(Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    :cond_12
    const-string v0, "VIPAvailable"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->d:Z

    :cond_24
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    if-nez v0, :cond_e

    const-string v0, "MiCloudStatusInfo"

    const-string v1, "parseToQuotaInfo() mQuotaInfo is null."

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    .line 60
    :cond_e
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/a/a/a;->a(Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->d:Z

    return v0
.end method

.method public d()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 2

    .line 80
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->c:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    return-object v0
.end method
