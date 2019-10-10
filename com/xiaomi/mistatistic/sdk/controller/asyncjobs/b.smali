.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:J

.field private d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/json/JSONObject;

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(JZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V
    .registers 7

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    .line 86
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    .line 87
    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    .line 88
    iput-boolean p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 4

    .line 137
    iget-wide v0, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(J)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 139
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_11

    .line 140
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    .line 141
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    :cond_11
    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    .line 221
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 222
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private b(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v1, "mistat_session"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_35

    .line 229
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_session"

    .line 231
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    .line 232
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v2, "mistat_session"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v0, v1

    .line 236
    :cond_35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 238
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 239
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v2, "start"

    .line 240
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end"

    .line 241
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "env"

    .line 242
    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "values"

    .line 243
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private c(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v1, "mistat_session_extra"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_35

    .line 249
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_session_extra"

    .line 251
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    .line 252
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v2, "mistat_session_extra"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v0, v1

    .line 256
    :cond_35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 257
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 258
    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string p1, "start"

    .line 259
    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "auto_end"

    .line 260
    invoke-virtual {v1, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "values"

    .line 261
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private c(J)Z
    .registers 7

    .line 147
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    sub-long/2addr v0, p1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_17

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(J)Z

    move-result p1

    if-nez p1, :cond_19

    :cond_17
    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method private d(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v1, "mistat_pv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_3e

    .line 267
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 268
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 269
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "category"

    const-string v4, "mistat_pv"

    .line 270
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "values"

    .line 271
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    .line 272
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v2, "mistat_pv"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 276
    :cond_3e
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 278
    array-length v3, v1

    if-lez v3, :cond_81

    const/4 v3, 0x0

    .line 279
    :goto_53
    array-length v4, v1

    if-ge v3, v4, :cond_81

    .line 280
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_69

    add-int/lit8 v4, v4, 0x1

    .line 282
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_7e

    .line 284
    :cond_69
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 285
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 286
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_81
    const-string v1, ","

    .line 290
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    .line 291
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ","

    .line 292
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "index"

    .line 293
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string p1, "source"

    .line 295
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_bc

    :cond_b1
    const-string v1, "source"

    .line 297
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_bc
    return-void
.end method

.method private e(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v1, "mistat_pt"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_34

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 305
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_pt"

    .line 306
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    .line 307
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string v2, "mistat_pt"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_34
    const-string v1, "values"

    .line 311
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 312
    :goto_3b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 313
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    .line 314
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "value"

    .line 316
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 320
    :cond_78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 321
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    .line 322
    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "values"

    .line 323
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private f(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_36

    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 331
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    .line 332
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    .line 333
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    const-string v2, "event"

    .line 338
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 340
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_6b

    if-nez v1, :cond_6b

    const-string v0, "value"

    .line 342
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "value"

    .line 343
    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_108

    .line 345
    :cond_6b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 346
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 347
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    .line 348
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "values"

    .line 349
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 350
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    :cond_9a
    const-string v1, "mistat_extra"

    .line 352
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string v1, "values"

    .line 353
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_108

    .line 355
    :cond_b0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 356
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 357
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 358
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e0

    const-string v2, "numeric"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    goto :goto_e0

    :cond_d8
    const-string v2, "value"

    .line 361
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_eb

    :cond_e0
    :goto_e0
    const-string v2, "value"

    .line 359
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 364
    :goto_eb
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ff

    const-string v2, "params"

    .line 365
    new-instance v3, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ff
    const-string p1, "values"

    .line 367
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_108
    return-void
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 151
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 156
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    .line 157
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b()V

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    .line 159
    iget-boolean v2, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/Boolean;)V

    move-wide/from16 v2, p1

    .line 161
    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(J)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_e8

    .line 163
    :try_start_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_2a} :catch_e3

    if-lez v5, :cond_e8

    move-wide v5, v3

    move-wide v7, v5

    const/4 v10, 0x0

    .line 165
    :goto_2f
    :try_start_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_c0

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaomi/mistatistic/sdk/data/c;

    cmp-long v12, v5, v3

    if-nez v12, :cond_49

    .line 169
    iget-wide v12, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_41} :catch_e0

    .line 170
    :try_start_41
    iput-wide v12, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_43} :catch_45

    move-wide v5, v12

    goto :goto_49

    :catch_45
    move-exception v0

    move-wide v5, v12

    goto/16 :goto_e1

    .line 172
    :cond_49
    :goto_49
    :try_start_49
    iget-wide v12, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_4b} :catch_e0

    .line 175
    :try_start_4b
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    .line 177
    iget-object v7, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    if-nez v7, :cond_73

    .line 179
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    .line 180
    iget-object v7, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v8, "endTS"

    iget-wide v14, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    invoke-virtual {v7, v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 182
    iget-object v8, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v14, "content"

    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v7, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_73
    const-string v7, "mistat_session"

    .line 186
    iget-object v8, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 187
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    goto :goto_ae

    :cond_81
    const-string v7, "mistat_pv"

    .line 188
    iget-object v8, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 189
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    goto :goto_ae

    :cond_8f
    const-string v7, "mistat_pt"

    .line 190
    iget-object v8, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 191
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    goto :goto_ae

    :cond_9d
    const-string v7, "mistat_session_extra"

    .line 192
    iget-object v8, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 193
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    goto :goto_ae

    .line 195
    :cond_ab
    invoke-direct {v9, v11}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    .line 198
    :goto_ae
    iget-object v7, v9, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string v8, "startTS"

    iget-wide v14, v11, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    invoke-virtual {v7, v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_b7} :catch_be

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v2, v2, 0x1

    move-wide v7, v12

    goto/16 :goto_2f

    :catch_be
    move-exception v0

    goto :goto_f7

    .line 201
    :cond_c0
    :try_start_c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packing complete, total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records were packed and to be uploaded"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V
    :try_end_dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c0 .. :try_end_dd} :catch_e0

    move-wide v3, v5

    move v2, v10

    goto :goto_ef

    :catch_e0
    move-exception v0

    :goto_e1
    move-wide v12, v7

    goto :goto_f7

    :catch_e3
    move-exception v0

    move-wide v5, v3

    move-wide v12, v5

    const/4 v10, 0x0

    goto :goto_f7

    :cond_e8
    :try_start_e8
    const-string v0, "No data available to be packed"

    .line 203
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V
    :try_end_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e8 .. :try_end_ed} :catch_e3

    const/4 v1, 0x0

    move-wide v7, v3

    :goto_ef
    move-wide/from16 v16, v3

    move-object v3, v1

    move-wide v4, v7

    move v8, v2

    move-wide/from16 v6, v16

    goto :goto_100

    :goto_f7
    const-string v2, "packing exception:"

    .line 207
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    move-wide v6, v5

    move v8, v10

    move-wide v4, v12

    .line 209
    :goto_100
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V

    return-object v0
.end method

.method public a()V
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    .line 94
    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 96
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v6

    iget v8, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v9, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    goto :goto_3c

    .line 98
    :cond_29
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v2, ""

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v5

    iget v7, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    .line 101
    :goto_3c
    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    if-eqz v1, :cond_7e

    .line 102
    iget v1, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-lt v1, v6, :cond_7b

    const-string v1, "Packing %d anonymous events over MAX_PACKING_EVENT %d"

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 103
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 105
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    if-ge v0, v2, :cond_75

    .line 106
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    .line 107
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    add-int/2addr v0, v4

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    goto :goto_ca

    :cond_75
    const-string v0, "Packing, exceeded MAX_UPLOAD_TIMES 5"

    .line 109
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;)V

    goto :goto_ca

    .line 112
    :cond_7b
    sput v5, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    goto :goto_ca

    .line 115
    :cond_7e
    iget v1, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-lt v1, v6, :cond_b3

    const-string v1, "Packing %d not anonymous events over MAX_PACKING_EVENT %d"

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 117
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    if-ge v0, v2, :cond_ad

    .line 118
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    .line 119
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    add-int/2addr v0, v4

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    goto :goto_ca

    :cond_ad
    const-string v0, "Packing, exceeded MAX_UPLOAD_TIMES 5"

    .line 121
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;)V

    goto :goto_ca

    .line 124
    :cond_b3
    sput v5, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b5} :catch_b6

    goto :goto_ca

    :catch_b6
    move-exception v0

    const-string v1, "remote data packing job execute exception:"

    .line 130
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    :goto_ca
    return-void
.end method

.method b(J)Z
    .registers 9

    .line 213
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    .line 214
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_14

    cmp-long p1, p1, v2

    if-gez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method
