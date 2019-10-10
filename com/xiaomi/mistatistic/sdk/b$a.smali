.class public Lcom/xiaomi/mistatistic/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 144
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 136
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    return-void
.end method
