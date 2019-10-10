.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Lcom/xiaomi/accountsdk/account/data/f;

.field private j:Ljava/util/Calendar;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field private p:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->o:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->p:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/f;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->i:Lcom/xiaomi/accountsdk/account/data/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Ljava/util/Calendar;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->j:Ljava/util/Calendar;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->k:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
    .registers 22

    move-object/from16 v0, p0

    .line 197
    new-instance v19, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->f:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->g:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->i:Lcom/xiaomi/accountsdk/account/data/f;

    iget-object v11, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->j:Ljava/util/Calendar;

    iget-boolean v12, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->k:Z

    iget-object v13, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->l:Ljava/lang/String;

    iget-object v14, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->m:Ljava/lang/String;

    iget-object v15, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->n:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->o:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->p:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-object/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/f;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$1;)V

    return-object v19
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->n:Ljava/lang/String;

    return-object p0
.end method
