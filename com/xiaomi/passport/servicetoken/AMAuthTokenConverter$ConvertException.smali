.class public Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertException"
.end annotation


# instance fields
.field public final a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 220
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$1;)V
    .registers 4

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;)V

    return-void
.end method
