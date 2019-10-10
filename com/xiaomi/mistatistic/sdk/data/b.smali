.class public Lcom/xiaomi/mistatistic/sdk/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 10

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .registers 14

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 14

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->i:J

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    .line 52
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->j:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->d:J

    .line 54
    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->f:I

    .line 55
    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->g:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/b;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->j:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 3

    .line 85
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "NULL"

    .line 87
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    goto :goto_3a

    .line 90
    :cond_b
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "NULL"

    .line 92
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    goto :goto_3a

    .line 94
    :cond_1e
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    const-string v1, "WIFI"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 97
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->l:Ljava/lang/String;

    :cond_3a
    :goto_3a
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "net"

    .line 115
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    const-string v1, "cost"

    .line 117
    iget-wide v5, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->d:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    :cond_1b
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_28

    const-string v1, "first_byte_t"

    .line 121
    iget-wide v5, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    :cond_28
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const-string v1, "code"

    .line 125
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    :cond_34
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "exception"

    .line 128
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_43
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "op"

    .line 132
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_52
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    const-string v1, "flow"

    .line 136
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    :cond_5f
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_70

    :cond_69
    const-string v1, "flow_status"

    .line 140
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    :cond_70
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "rid"

    .line 144
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_7f
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string v1, "dns"

    .line 148
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8e
    const-string v1, "t"

    .line 151
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 157
    instance-of v0, p1, Lcom/xiaomi/mistatistic/sdk/data/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 160
    :cond_6
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/b;

    .line 161
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->g:Ljava/lang/String;

    .line 162
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->f:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->f:I

    if-ne v0, v2, :cond_67

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->d:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_67

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->i:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->i:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_67

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_67

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->o:I

    if-ne v0, v2, :cond_67

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    .line 165
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/b;->e:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_67

    const/4 v1, 0x1

    :cond_67
    return v1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/b;->k:J

    return-wide v0
.end method
