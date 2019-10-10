.class public Lcom/xiaomi/passport/PassportUserEnvironment$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/PassportUserEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/passport/PassportUserEnvironment;

.field private static b:Lcom/xiaomi/passport/PassportUserEnvironment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment;

    invoke-direct {v0}, Lcom/xiaomi/passport/PassportUserEnvironment;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a:Lcom/xiaomi/passport/PassportUserEnvironment;

    .line 47
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a:Lcom/xiaomi/passport/PassportUserEnvironment;

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->b:Lcom/xiaomi/passport/PassportUserEnvironment;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/passport/PassportUserEnvironment;
    .registers 1

    .line 57
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->b:Lcom/xiaomi/passport/PassportUserEnvironment;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/passport/PassportUserEnvironment;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 53
    sput-object p0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->b:Lcom/xiaomi/passport/PassportUserEnvironment;

    return-void

    .line 51
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PassportUserEnvironment instance cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lcom/xiaomi/passport/PassportUserEnvironment;
    .registers 1

    .line 61
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a:Lcom/xiaomi/passport/PassportUserEnvironment;

    return-object v0
.end method
