.class public Lcom/gionee/pay/third/GnCreateOrderUtils;
.super Ljava/lang/Object;
.source "GnCreateOrderUtils.java"


# static fields
.field public static final FLAG_DEV_ENVIRONMENT:Ljava/lang/String;

.field public static final FLAG_TEST_ENVIRONMENT:Ljava/lang/String;

.field private static final RELEASE_URL:Ljava/lang/String; = "http://pay.gionee.com"

.field public static final RSA_APIKEY_CLIENT:Ljava/lang/String; = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJydhvs8TQH3nTYE1XqDvSrl03CSKCQkxjloGN5ZVEOS6ysbWe1iBhJTw8Jbz8gG41FJql+tnsnzNTacGeK7M41IF9E+iME6w/4u14dMqbJr7HkK/c/fOkUfxsq5CcWi7/epmK5DgrvljB3OCj1AmBzDacoAb/mfSi3zypFeXSM5AgMBAAECgYBf2DuiBu4ttQZ954lpt7ONzCaQrrFoJSU2PpFxiYN68y9+KvfmwWVr091qVVucUzLMLWPZt9wERRWcvP1Odzf9U17Q3rDYR5dFnTCtitumnsOJVDLqXTH2psuVFrdKX8Vp//qEcO5flY8xSaxu9/oZflwMtFj2R5R26VEdoZ7PfQJBAP2PsBuaOdyZoiSp388WUn76KqO/LKX//JGYakuet24I/w8mW5ca0x3B8/N/CN8mG8DxBvCEIyTy2HscsbjeIscCQQCeHyQ8Pet37gh/QIlino32hRgEHcSwQsEpjYcWPoCJh0X7I2HzidTNY5JbFbxLyaHTFNfeNO5aW6IBCzlnpIn/AkEAhjERRspsbO9x/G1a4UIzDrhe8KIwgvnjNTqwpqys7zMbqWzndCTiLhGDhg5pJ5AHiCkHPyrvXpKXNzCMbgZB6QJAdlLzeKkVVa+oaCFRLZ1cuocqS5pDH2s0xPWFix3GbiPuOFpn6CjSN8g1Mzf2qff+wsgsKboOS0ua1ZEiqe403QJAVIW2LYRtt1YdlIjTopSSi9LQQKPFkP6DQjrO2n7BgOkWgQjsBHfZGy+AG7Yyq7WcKZEYKaEndqnwyZme8KcLcw=="

.field public static final RSA_APIKEY_CLIENT_TEST:Ljava/lang/String; = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAKRMSF03RSAGxUVmzZUgVxXTQC8Bb+Z05517fJjVJz0D8Zj+aB4ilSc/G7i0CH2RFZWxhFWbXBHOlWl80QCauLUdUtcvkXKlOy7jCQrL6WvDhrRX2sXjjAvJhcWq/YrTM80ON/R7OF37SqaA8/OW8S4nYyWZnrPuE0oKz9/kZjCNAgMBAAECgYEAiyc8xw6v0k9Jt905VAvfFlIk82sBLqxnG1/iiMNIB4qWjqEy6AscTvBJd2esJUXDhVSjo6oBEefpbj3T+vIQa6DmFIUMkD4Ut1qpMXjD1cUInRQPY6jAsHgXZHkGnQPCsCMEiRN1UlO7vWobQHG9xQuXyuSKJAcw5l0Y/S4BlQECQQDfl6Xo2FgET4d9CuX1ajX5kEkVqyMsBv0h6F00DVrFmcE6kLhCj9dGDNEiKF5UBbSjqcQYfxoniTl8KwcryyNBAkEAvByHCCH/qxXr0O8ae+t5nmCKkjUPhyIh/UizbmV3g8uubN79WaMZTRZ1uzefOAQYPGUtQf072/Zob1Ju0wUWTQJBAIASWhsUiN33O/FY471+F+qaRfKec2gNnMLmWTSujZbv6imEqbaes71RLB13qAhSuFSiskshyrZouL+x2cqw8cECQA3d0Hph/zW+XO6+4WXnGsT4+t4COU3Nz1GbbVai9idp+UafPW/BHRlYoX8Wf48ihiLVlnt5zlLNnC8wlWjKxDUCQQCA9LLFoRfuS9az8xRI8CFSCh7uFkBvTwR3Bgoqj1JUBH7gYzitT20wtNMyjM01L3rrNPioIS+YXRl8M4g+GvtM"

.field public static final RSA_APIKEY_SERVER:Ljava/lang/String; = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJZJoM3tJzf96lejbCsQsCgnMAdLtyvf9ZkflExjEUuQ1O7g+OuWc4ZrvtE+coWZmUt2IjYkws63XAbFt/aMEHu/qerp3g/Mn1Y+tVFVbsME+hqhTVknOtt7kv+ZyVymHXZEBvzlTQXiybUDXkRqvvu+hO/+4BhS6fNmuggYpbTnAgMBAAECgYBhIABOVT+NTgnOzYywYD6YFItTi7k7H6fnZ6M9oqCgx171ams0Ra0vaB6Pt93nPZb2T8hYWXWUhqdwsQLs0SQs9+91881Nu1JE1nPAyeQKWv0t6Ol8BavecvEGUcJPXJ1/zZFU7r+s3pdz7OnQV2b77VhZiLsaQsmrxLPALdeTkQJBAMSxDuQymonH0q9KbMAgZ/c7ZraQhc1erf8eb6ni+3eXoJkJBlYsFmp+zFxo6gfj8N8nl0sV1sD3g2HwcUTOimsCQQDDmpG0uqTmAGJryfZOp8YB3VqhTZfFf1xcXQGNkUsaNXFpLMd5O4haRlL4FiROenVucYd0VU4eZIOi33CkYdZ1AkEAjxxUvWykTIN7o9b+8XuiqZwqy8Kz2A1/hBRdIrroRMeqLi8G0UQauzmu773WKg+LfpKL3jHxo01z5prPj0TIKQJBAJl5BMv2Cf4A3ThPnXd3gg/iewLG28d1N6Wsv9Qw5Olqd1KbdON1R3X1aZIH5XLB+LOwViR77jBAk1xOzpXbwiUCQDX4cj4IWy6brwCFFOkcqY23veDTIB8vXC2Kg//Kv1vUJ41DM82/Ga7fBAqCgTHSow3QlByoMFokAxmkU6Zc5EE="

.field public static final RSA_APIKEY_SERVER_TEST:Ljava/lang/String; = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAJbh3e0/eF68GtoSE/wVZMna1GvFxthlN4hDsViuC4WGydAnK6HivvLI5SlV4lVKPV7gl+YOTUllhWoftUgCG664LyLIaxd0oJoF/TDSDuOz6+VPbIBfqJ+KpFXhGBc/WsOjZV//yR4/SKE9Mowpz/pZxi33V5tBG923yRmOP+8tAgMBAAECgYEAhcDqzHOUkF6uaxzVjIWmmG6eGn/0O0bXCLwBjjyTyCXp59Whj1wDrBQ9WfxhrPwoFWCCJ5YMG4Gc2KwNNy1vPXw928extH60D4N3i98gy+RcvrXLhXcHfepOrao9xbyTnG2gIz49AMrTA3MG7wjOlf5ZSUt3CE5PofNLt34cyMECQQDtFbNj5siI0rj+buDW8NCiDZYSZUzQWBdJ2xDWh7sxbTUMlF8dCwa2+avgWsyvz8yuUbu88vwOibcYM0daZSlRAkEAouuJqCqgvyEjL2upyQf3pd5ZTyDybjIy24LA+giSQrzHIZ3EIfgf1/674FQpvja8NqOr4gHvxZrO75S3TVXxHQJAOp9sDR7KpTJdteQaymsfW4K6ge/0b2vozkVRw4oqWk1jmamyXw8T6PiRbFdnV22tcckZ/92hP8MDuAMt+IcdEQJBAJ4LkEaq07WWF+PwtYxnRj6KLGkutP9hgySe+0WS+w/ywdpCifnKEloeq3M7MiNsRblbnWpqJoezXfvccNV9AaECQQCL8gnZJ5wbRFHvPcWIcYOw6tQmK5ddfWp+9Edma3ijxGaF4VK/tOv339dB7Xafh39+UfpAi2AqDMk+/+ZD+PGe"

.field public static final RSA_PRIVATE_11:Ljava/lang/String; = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBANL1BvMe6FwHE7JyD05noj0+t1n6jDP4paH3TKbz3RKSsuj8pXYphu6fMAH0CSzm8EQmpqaAJGgTQl0HTXuIA3HGU4Lp7kq3ZamXzfMYpav40dohLyAURMfk+CQH8Qbpdf3qwaQvqGZ84egK4Ib/+HmwQ1SQvGa6YQILSdLxbEALAgMBAAECgYEAq1yGzK7qqPbGtUmZzWK5k26CmgDAKudsBGlSRrwJdLDdzAyOi7Gn/eYppSyK14Kw4WtULCQjbrdWTSNFeXc+847ilFS4Dj2rr88sEQ2wnNRO2E/+e2ZqtxfAuSfVIiHvt5ClALRbFgPzYjLgjO25fdv4Tpm1WQm0f5Yc/YqiDAECQQDzpAZjs9r0sKH0k55IFDLwUW8DSk52+HhSZAQ9/FWfNP2OMI90LgBi7nkb3saTYSTMoS/jWeKVBpSJfcXSjaeLAkEA3aiQyEKxhGBKxgtDDWGzLS8+SQtA4px5uVuCyg9rfYabJQ0t7H17+e/dUCGCftVnwHYQM5G0uBcoCVgVn9LZgQJBAMA49vmOmv9WpFCMbuK7XP0Rop5b79AZdQS7+ETXYs47Rpj6YxPsf02OjGqattzsVdZEjb232vZsvKBFZOAb9sUCQE5NELAdlzXrCh8BtXMRs0jf6oHFHuuuWPWYlRAp+E/EcCPbjwB+p3/4Mtbur3l8i4Uab8i3zP5G99atLh5iToECQQCcN5YannQUKMlB2Jg14R2HbzEAQE45V+eU1Ha4D+MkjROMPiL8kFXj8whi+/3x/lKJ9jJqgGxW94jjtj1UNTAy"

.field public static final RSA_PRIVATE_22:Ljava/lang/String; = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMZaCwldTpapX7NTImgcKX8OmkJ7IBv/Hnfq8tNHtrOxIQW4WmxZUbFj4ZgtIU3Rw1aMA9WXXE6uUE+oCRlihczkUePTXwV4ZnGMpzTKEthm1Ta3QGYqplDEdHNjjBBURQ9Hc3j1Tr5jnuq3p3Cn7yIOVNvbK1pHfQR7V9o76bMJAgMBAAECgYEAtukD8m/D7/Vi1ggc22rU7WD26cWG96pMW4Mix6kDFzOJYy/82puHVRDpUR6U7qE4BBB73LSGn9vpHXu0YF9VR9lsoKQz9FluGGUkT9YxMsXeVn+aFRWAzPzX8rfS2V3eCCTLcJWabzwcuKlyfx4nxYh79hN+R2dDlxhLv5XC5XECQQD6zILsJ66qyOr5ovkiHhlPUnFqj9IBRvh/PSxSSCSOtcg/Pt0UfKP7WKgbC3HC2CkSC0IJ+gpD1x8SeluXDn0VAkEAyncXIn3aSjSj0X1aEFnc9H3gagee2cZrpJWiqIMPs8nEewowPPcjiJLk0p8Rj1q9oVS58NNDFopZIu0O4EjjJQJAL+h3LfNam0csE6m9G3ZScWOXRLraa+IJwAyIdeNQEG7LJMG2a55vmKjT2+6wuX6fQdIiuFMqONFUHyx+aHmdDQJAZP/VraIkpAHwes/SfvelLt4gdiRJDRBboGX5F6ER0zli55IkkDUlJ7tHpP4vL1kv4ew3ObjZ7cOkRbUGR8J0dQJBAIS0OCnfazpWEt+UaMDKxvLDRLfYdfUkCGQfXuw+1RdXPS91fb3f+WDURUVo0BOGpOb8zHG41IwI/L0cbPcB1xA="

.field public static final RSA_PRIVATE_33:Ljava/lang/String; = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAL7Bra/CBppcoLflEg/GK7KUVGhlTX/2cTcZMWDHEMRO8riQVLKO49y3RTtX0X3PZPdwQ0f0hVJ/2wg3ANbmp9QMTufUfNueKqF3W65/82r+hV4C7hwkn704U/f8hFYC3HwWPaY/cQpvwZEk1rmCS+h01cy3dhY2zuPGFrvtSf1hAgMBAAECgYA55uZGxFlmv5kVWNYLrbaT5Uxdx+onXnHtLJt9ac9gFyq79SuQa6kk1QiRw81WJ/7Y0N3LWKCjcyXUL4X0tVzZjUZ8m2/7dIKFTHnu64XiZTZIPhDFoQos58m3DJAFV+2igrOPvb1mVO2hdsPt1j64kKk6bLO3Gci9ofU1opjJAQJBAO1shc3Yxepsaac4Qr21PQwbf4kKnMEG44OwMFZdHpnH4/EdTgpPTtGWcCRXfC0MNbUfiuIE2Tzx1gHj2s9J4VECQQDNrm7RjKOdCu6DGjo7yqt0n+zb6RYs/z+gm5w52RqPJZNXMrcwSpCX0xnXfegF7lFuAqH3BzomvTyTBBs499cRAkEA37rdF84HKtHAedhVZClufoNHGh+K+YaBTK3xzuBvHqCzlplz2dlEP9JQmJ5sIJMZ5TT1DeldwMVvUlah8aYAEQJALTvYeVNRxD7cN470EaQ/0tU9FRwM2XaFOsAeOoaplaOw5LNtoDw10n4Fp+OzvGIuHGCN2DMJse1aPgbgKcYv0QJAFv5c2xVftEmhpMdshswnsAqbjddT4PNBeSY54xyfkZqBwZIEH5x2+WSH//L2CbOgh/g9BgmEsg+VTQ7/Cl9yGA=="

.field public static final RSA_PRIVATE_DEMO:Ljava/lang/String; = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAN33eE2nD7fcBF/WNxTukvffy9NTXeWduFjfsyzVXPLXbxysQDsOJpoXIYhwU0Dif1bpT9BHY74Jnymw3+/D2bTM1mc+r0G84hSQ67wjL4fr3gY9UP5GgUCEX2t2lp9CLv0RU68elISSCE7Or+jN0kXLxhC1ZlxEmskNc8y7o87jAgMBAAECgYEAoWRi0PN79k+/zn9PpaSisCDFb27agy5e8CAXg63P27LRU6PbQBVV9AyFkVM69Z66wFL8eZCu8WrFk+bLrOZW0Ei2v8MHru1aYkX1Oa0hprob8O0hlr8Wxri1VHxSXOHq3MTD/NM9bAB2Kb6coqpR4T2Poajtk5zXyNZMiDeiPYECQQDzRm6RlXaKorHRbAhYXfktQ/0o+hZSidzYaDDKlUijZFF2CmczK93/na0HRwoIEUTyucLdL2BVipyu5cu7rb6xAkEA6ZO1O9WkJRxWxtnO5h0HNsEsH1mSRa5sjK1i2QJ4h1OxLJz4+P/UrXAvj1/sgnfxUG/eDh0WOTmz6V370fCT0wJAGzwyWrgZ6lFmiOSIVqRGpiurZvAAmcL3Z37an4Nw+2HawNVPUmpB00EqwtrQI7ETP/1N9Ic+SLVY7zeoxF0iMQJBAKSQ+xmjFjlHVCRaBRm/zftX8pxL4XDSyYv8BS7cPMsrviKungPhS5i+9+NONDZgB1ci2hKbj7LV4tpC608o7x0CQDY8BmLv63BNxS9/1s7X6thmVzP6co2fKdpWr5gw3E5bBXr2VJAInc5CfuDjaX2iRiYjvYLpC8QOWfxqTBLokY0="

.field public static final RSA_PRIVATE_DEMO2:Ljava/lang/String; = "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMtMIUSMSuK0MJh+Dv+1vZpXbw7a1DZlOJA/cWsGFGRXIziRPTI94wjYvsAg39dDyDSti2Deo4kcsXckCdr4pWYcos8wTvu9yx5M78wHFMn4Rm/YuMHHELcoz7afC/PpLXlAkydqncvqkw9olJAV3t2tKCNBF6bytzkAghXIYEZLAgMBAAECgYBrl/4fZlSXyR/TBRxxD0Gqts2LQhuAMnAOP9WJ++y88jUs0gleVsyauQOzcXKmXjROVO7oNMy+W1Y9JPCmWGRIRYz6WxhOfhYjxRSJIYONdNdQHJlBiZVTV0Gqhu8blysGHPeIDEmYUpzFbuDDBO9BYEKq8JZbPDAnQu50S1XwyQJBAPV8TCRO1OsQGT7PguAPwodTvw7dXnVE3+elcVD/KhnwmbbawilmCHT1dKnrHf/mC0IdR7xdFn2Nb9zof2WmIv0CQQDUAT9UC9S7Y1hnaIizMkuR1K5S8ZDlh5PC0nEcw6Yi8f5pW8ZdNysmR5jBK36bEt2+ZHj90IXxikU6+CmHccTnAkBU/MhblZMvIi6rSSo1Kh+dvEeb/NWz4blmuCdH9F7+BgchgBDSRknNPCE8pnKHYnwpUnvAYbXkl6/PmgppBaB9AkA3l3AkuMl6ra1DyGx4GMsqHUvs4f0twuRjJM2WTlNlPHGK7Q7R6KJ+8i1DEgWr4kGVKEF1xNUqpihLM0Goi5OnAkBCs5wVK8Yed61JsbLGzveTWC5+/Ny6FFUGjw1aaMIhIPKDz2YgZJm1QR8tsn5IWbB6fR1dgmkbKnESW7CPUBSF"

.field private static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"

.field static final TAG:Ljava/lang/String; = "payment"

.field private static final TEST_URL:Ljava/lang/String; = "http://test3.gionee.com/pay"

.field private static sDevelopUrl:Ljava/lang/String; = null

.field private static final sOrderCreate:Ljava/lang/String; = "/order/create"

.field static sUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t-pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->FLAG_TEST_ENVIRONMENT:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d-pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->FLAG_DEV_ENVIRONMENT:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->sDevelopUrl:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->checkURL()V

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendAndWaitResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2710

    .line 305
    const-string v6, "payment"

    const-string v7, "SendAndWaitResponse"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v6, "payment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "params:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/gionee/pay/third/GnCreateOrderUtils;->sUrl:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/order/create"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "url":Ljava/lang/String;
    const-string v6, "payment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v4, ""

    .line 310
    .local v4, "result":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 312
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 314
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 315
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p0, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 320
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 321
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 322
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_b6

    .line 323
    const-string v6, "payment"

    const-string v7, "SendAndWaitResponse"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_b6
    const-string v6, "payment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-object v4
.end method

.method private static checkURL()V
    .registers 1

    .prologue
    .line 132
    sget-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->FLAG_DEV_ENVIRONMENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isFileExit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 133
    sget-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->FLAG_DEV_ENVIRONMENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/pay/third/GnCreateOrderUtils;->initBaseDev(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->sDevelopUrl:Ljava/lang/String;

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->sUrl:Ljava/lang/String;

    .line 140
    :goto_11
    return-void

    .line 135
    :cond_12
    sget-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->FLAG_TEST_ENVIRONMENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isFileExit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 136
    const-string v0, "http://test3.gionee.com/pay"

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->sUrl:Ljava/lang/String;

    goto :goto_11

    .line 138
    :cond_1f
    const-string v0, "http://pay.gionee.com"

    sput-object v0, Lcom/gionee/pay/third/GnCreateOrderUtils;->sUrl:Ljava/lang/String;

    goto :goto_11
.end method

.method public static getOrderByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 30
    .param p0, "contxt"    # Landroid/content/Context;
    .param p1, "rsaPrivate"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "outOrderNo"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "consumedRewards"    # Ljava/lang/String;
    .param p7, "totalFee"    # Ljava/lang/String;
    .param p8, "dealPrice"    # Ljava/lang/String;
    .param p9, "deliverType"    # Ljava/lang/String;
    .param p10, "submitTime"    # Ljava/lang/String;
    .param p11, "playerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v11, 0x0

    .line 413
    .local v11, "expireTime":Ljava/lang/String;
    const/4 v12, 0x0

    .line 414
    .local v12, "rebateRewards":Ljava/lang/String;
    const/4 v13, 0x0

    .line 415
    .local v13, "rebateExpireTime":Ljava/lang/String;
    const/4 v14, 0x0

    .line 416
    .local v14, "rebateMsg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 417
    .local v15, "msg":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "notifyUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v17, p11

    .line 418
    invoke-static/range {v0 .. v17}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getOrderByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p0, "contxt"    # Landroid/content/Context;
    .param p1, "rsaPrivate"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "outOrderNo"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "consumedRewards"    # Ljava/lang/String;
    .param p7, "totalFee"    # Ljava/lang/String;
    .param p8, "dealPrice"    # Ljava/lang/String;
    .param p9, "deliverType"    # Ljava/lang/String;
    .param p10, "submitTime"    # Ljava/lang/String;
    .param p11, "expireTime"    # Ljava/lang/String;
    .param p12, "rebateRewards"    # Ljava/lang/String;
    .param p13, "rebateExpireTime"    # Ljava/lang/String;
    .param p14, "rebateMsg"    # Ljava/lang/String;
    .param p15, "msg"    # Ljava/lang/String;
    .param p16, "notifyUrl"    # Ljava/lang/String;
    .param p17, "playerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v4, "parameterStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {p6}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 493
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_11
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static/range {p11 .. p11}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 499
    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_26
    invoke-static/range {p16 .. p16}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 502
    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_31
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {p4}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 509
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_4a
    const-string v6, "payment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "consumed_rewards:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "parameterStringBuilder.toString():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 512
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 511
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v6, "testGionee11"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 515
    const-string p1, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBANL1BvMe6FwHE7JyD05noj0+t1n6jDP4paH3TKbz3RKSsuj8pXYphu6fMAH0CSzm8EQmpqaAJGgTQl0HTXuIA3HGU4Lp7kq3ZamXzfMYpav40dohLyAURMfk+CQH8Qbpdf3qwaQvqGZ84egK4Ib/+HmwQ1SQvGa6YQILSdLxbEALAgMBAAECgYEAq1yGzK7qqPbGtUmZzWK5k26CmgDAKudsBGlSRrwJdLDdzAyOi7Gn/eYppSyK14Kw4WtULCQjbrdWTSNFeXc+847ilFS4Dj2rr88sEQ2wnNRO2E/+e2ZqtxfAuSfVIiHvt5ClALRbFgPzYjLgjO25fdv4Tpm1WQm0f5Yc/YqiDAECQQDzpAZjs9r0sKH0k55IFDLwUW8DSk52+HhSZAQ9/FWfNP2OMI90LgBi7nkb3saTYSTMoS/jWeKVBpSJfcXSjaeLAkEA3aiQyEKxhGBKxgtDDWGzLS8+SQtA4px5uVuCyg9rfYabJQ0t7H17+e/dUCGCftVnwHYQM5G0uBcoCVgVn9LZgQJBAMA49vmOmv9WpFCMbuK7XP0Rop5b79AZdQS7+ETXYs47Rpj6YxPsf02OjGqattzsVdZEjb232vZsvKBFZOAb9sUCQE5NELAdlzXrCh8BtXMRs0jf6oHFHuuuWPWYlRAp+E/EcCPbjwB+p3/4Mtbur3l8i4Uab8i3zP5G99atLh5iToECQQCcN5YannQUKMlB2Jg14R2HbzEAQE45V+eU1Ha4D+MkjROMPiL8kFXj8whi+/3x/lKJ9jJqgGxW94jjtj1UNTAy"

    .line 548
    :cond_82
    :goto_82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, p1, v7}, Lcom/gionee/pay/third/GnCreateOrderUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "sign":Ljava/lang/String;
    const-string v6, "payment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "sign:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 555
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_b1
    const-string v6, "sign"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v6, "api_key"

    invoke-virtual {v2, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v6, "out_order_no"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    invoke-static {p4}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 559
    const-string v6, "user_id"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    :cond_cb
    const-string v6, "subject"

    invoke-virtual {v2, v6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    invoke-static {p6}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 564
    const-string v6, "consumed_rewards"

    invoke-virtual {v2, v6, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    :cond_db
    const-string v6, "total_fee"

    move-object/from16 v0, p7

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v6, "deal_price"

    move-object/from16 v0, p8

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v6, "deliver_type"

    move-object/from16 v0, p9

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v6, "submit_time"

    move-object/from16 v0, p10

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    invoke-static/range {p11 .. p11}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 580
    const-string v6, "expire_time"

    move-object/from16 v0, p11

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    :cond_104
    invoke-static/range {p12 .. p12}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 583
    const-string v6, "rebate_rewards"

    move-object/from16 v0, p12

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    :cond_111
    invoke-static/range {p13 .. p13}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 586
    const-string v6, "rebate_expire_time"

    move-object/from16 v0, p13

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    :cond_11e
    invoke-static/range {p14 .. p14}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 589
    const-string v6, "rebate_msg"

    move-object/from16 v0, p14

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    :cond_12b
    invoke-static/range {p15 .. p15}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_138

    .line 592
    const-string v6, "msg"

    move-object/from16 v0, p15

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    :cond_138
    invoke-static/range {p16 .. p16}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 596
    const-string v6, "notify_url"

    move-object/from16 v0, p16

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    :cond_145
    invoke-static/range {p17 .. p17}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    .line 599
    const-string v6, "player_id"

    move-object/from16 v0, p17

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_152
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_152} :catch_1cb

    .line 606
    :cond_152
    :goto_152
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gionee/pay/third/GnCreateOrderUtils;->SendAndWaitResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "order":Ljava/lang/String;
    return-object v3

    .line 519
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "order":Ljava/lang/String;
    .end local v5    # "sign":Ljava/lang/String;
    :cond_15b
    const-string v6, "testGionee22"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_167

    .line 520
    const-string p1, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMZaCwldTpapX7NTImgcKX8OmkJ7IBv/Hnfq8tNHtrOxIQW4WmxZUbFj4ZgtIU3Rw1aMA9WXXE6uUE+oCRlihczkUePTXwV4ZnGMpzTKEthm1Ta3QGYqplDEdHNjjBBURQ9Hc3j1Tr5jnuq3p3Cn7yIOVNvbK1pHfQR7V9o76bMJAgMBAAECgYEAtukD8m/D7/Vi1ggc22rU7WD26cWG96pMW4Mix6kDFzOJYy/82puHVRDpUR6U7qE4BBB73LSGn9vpHXu0YF9VR9lsoKQz9FluGGUkT9YxMsXeVn+aFRWAzPzX8rfS2V3eCCTLcJWabzwcuKlyfx4nxYh79hN+R2dDlxhLv5XC5XECQQD6zILsJ66qyOr5ovkiHhlPUnFqj9IBRvh/PSxSSCSOtcg/Pt0UfKP7WKgbC3HC2CkSC0IJ+gpD1x8SeluXDn0VAkEAyncXIn3aSjSj0X1aEFnc9H3gagee2cZrpJWiqIMPs8nEewowPPcjiJLk0p8Rj1q9oVS58NNDFopZIu0O4EjjJQJAL+h3LfNam0csE6m9G3ZScWOXRLraa+IJwAyIdeNQEG7LJMG2a55vmKjT2+6wuX6fQdIiuFMqONFUHyx+aHmdDQJAZP/VraIkpAHwes/SfvelLt4gdiRJDRBboGX5F6ER0zli55IkkDUlJ7tHpP4vL1kv4ew3ObjZ7cOkRbUGR8J0dQJBAIS0OCnfazpWEt+UaMDKxvLDRLfYdfUkCGQfXuw+1RdXPS91fb3f+WDURUVo0BOGpOb8zHG41IwI/L0cbPcB1xA="

    .line 521
    goto/16 :goto_82

    .line 524
    :cond_167
    const-string v6, "testGionee33"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_173

    .line 525
    const-string p1, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAL7Bra/CBppcoLflEg/GK7KUVGhlTX/2cTcZMWDHEMRO8riQVLKO49y3RTtX0X3PZPdwQ0f0hVJ/2wg3ANbmp9QMTufUfNueKqF3W65/82r+hV4C7hwkn704U/f8hFYC3HwWPaY/cQpvwZEk1rmCS+h01cy3dhY2zuPGFrvtSf1hAgMBAAECgYA55uZGxFlmv5kVWNYLrbaT5Uxdx+onXnHtLJt9ac9gFyq79SuQa6kk1QiRw81WJ/7Y0N3LWKCjcyXUL4X0tVzZjUZ8m2/7dIKFTHnu64XiZTZIPhDFoQos58m3DJAFV+2igrOPvb1mVO2hdsPt1j64kKk6bLO3Gci9ofU1opjJAQJBAO1shc3Yxepsaac4Qr21PQwbf4kKnMEG44OwMFZdHpnH4/EdTgpPTtGWcCRXfC0MNbUfiuIE2Tzx1gHj2s9J4VECQQDNrm7RjKOdCu6DGjo7yqt0n+zb6RYs/z+gm5w52RqPJZNXMrcwSpCX0xnXfegF7lFuAqH3BzomvTyTBBs499cRAkEA37rdF84HKtHAedhVZClufoNHGh+K+YaBTK3xzuBvHqCzlplz2dlEP9JQmJ5sIJMZ5TT1DeldwMVvUlah8aYAEQJALTvYeVNRxD7cN470EaQ/0tU9FRwM2XaFOsAeOoaplaOw5LNtoDw10n4Fp+OzvGIuHGCN2DMJse1aPgbgKcYv0QJAFv5c2xVftEmhpMdshswnsAqbjddT4PNBeSY54xyfkZqBwZIEH5x2+WSH//L2CbOgh/g9BgmEsg+VTQ7/Cl9yGA=="

    .line 526
    goto/16 :goto_82

    .line 529
    :cond_173
    const-string v6, "FF20A4B3BCD44F1380DEECADFC6657D3"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_183

    const-string v6, "97DBC65F2F354FE68BF93206637D6D81"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_187

    .line 530
    :cond_183
    const-string p1, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAN33eE2nD7fcBF/WNxTukvffy9NTXeWduFjfsyzVXPLXbxysQDsOJpoXIYhwU0Dif1bpT9BHY74Jnymw3+/D2bTM1mc+r0G84hSQ67wjL4fr3gY9UP5GgUCEX2t2lp9CLv0RU68elISSCE7Or+jN0kXLxhC1ZlxEmskNc8y7o87jAgMBAAECgYEAoWRi0PN79k+/zn9PpaSisCDFb27agy5e8CAXg63P27LRU6PbQBVV9AyFkVM69Z66wFL8eZCu8WrFk+bLrOZW0Ei2v8MHru1aYkX1Oa0hprob8O0hlr8Wxri1VHxSXOHq3MTD/NM9bAB2Kb6coqpR4T2Poajtk5zXyNZMiDeiPYECQQDzRm6RlXaKorHRbAhYXfktQ/0o+hZSidzYaDDKlUijZFF2CmczK93/na0HRwoIEUTyucLdL2BVipyu5cu7rb6xAkEA6ZO1O9WkJRxWxtnO5h0HNsEsH1mSRa5sjK1i2QJ4h1OxLJz4+P/UrXAvj1/sgnfxUG/eDh0WOTmz6V370fCT0wJAGzwyWrgZ6lFmiOSIVqRGpiurZvAAmcL3Z37an4Nw+2HawNVPUmpB00EqwtrQI7ETP/1N9Ic+SLVY7zeoxF0iMQJBAKSQ+xmjFjlHVCRaBRm/zftX8pxL4XDSyYv8BS7cPMsrviKungPhS5i+9+NONDZgB1ci2hKbj7LV4tpC608o7x0CQDY8BmLv63BNxS9/1s7X6thmVzP6co2fKdpWr5gw3E5bBXr2VJAInc5CfuDjaX2iRiYjvYLpC8QOWfxqTBLokY0="

    .line 531
    goto/16 :goto_82

    .line 534
    :cond_187
    const-string v6, "A796CB45CF88424D870E70788B3A6314"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_197

    const-string v6, "EE063841BDB2491289A6B30E62453330"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19b

    .line 535
    :cond_197
    const-string p1, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMtMIUSMSuK0MJh+Dv+1vZpXbw7a1DZlOJA/cWsGFGRXIziRPTI94wjYvsAg39dDyDSti2Deo4kcsXckCdr4pWYcos8wTvu9yx5M78wHFMn4Rm/YuMHHELcoz7afC/PpLXlAkydqncvqkw9olJAV3t2tKCNBF6bytzkAghXIYEZLAgMBAAECgYBrl/4fZlSXyR/TBRxxD0Gqts2LQhuAMnAOP9WJ++y88jUs0gleVsyauQOzcXKmXjROVO7oNMy+W1Y9JPCmWGRIRYz6WxhOfhYjxRSJIYONdNdQHJlBiZVTV0Gqhu8blysGHPeIDEmYUpzFbuDDBO9BYEKq8JZbPDAnQu50S1XwyQJBAPV8TCRO1OsQGT7PguAPwodTvw7dXnVE3+elcVD/KhnwmbbawilmCHT1dKnrHf/mC0IdR7xdFn2Nb9zof2WmIv0CQQDUAT9UC9S7Y1hnaIizMkuR1K5S8ZDlh5PC0nEcw6Yi8f5pW8ZdNysmR5jBK36bEt2+ZHj90IXxikU6+CmHccTnAkBU/MhblZMvIi6rSSo1Kh+dvEeb/NWz4blmuCdH9F7+BgchgBDSRknNPCE8pnKHYnwpUnvAYbXkl6/PmgppBaB9AkA3l3AkuMl6ra1DyGx4GMsqHUvs4f0twuRjJM2WTlNlPHGK7Q7R6KJ+8i1DEgWr4kGVKEF1xNUqpihLM0Goi5OnAkBCs5wVK8Yed61JsbLGzveTWC5+/Ny6FFUGjw1aaMIhIPKDz2YgZJm1QR8tsn5IWbB6fR1dgmkbKnESW7CPUBSF"

    .line 536
    goto/16 :goto_82

    .line 538
    :cond_19b
    const-string v6, "C182B2152A414E8E8BA0CC8434AA2D33"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a7

    .line 539
    const-string p1, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAKRMSF03RSAGxUVmzZUgVxXTQC8Bb+Z05517fJjVJz0D8Zj+aB4ilSc/G7i0CH2RFZWxhFWbXBHOlWl80QCauLUdUtcvkXKlOy7jCQrL6WvDhrRX2sXjjAvJhcWq/YrTM80ON/R7OF37SqaA8/OW8S4nYyWZnrPuE0oKz9/kZjCNAgMBAAECgYEAiyc8xw6v0k9Jt905VAvfFlIk82sBLqxnG1/iiMNIB4qWjqEy6AscTvBJd2esJUXDhVSjo6oBEefpbj3T+vIQa6DmFIUMkD4Ut1qpMXjD1cUInRQPY6jAsHgXZHkGnQPCsCMEiRN1UlO7vWobQHG9xQuXyuSKJAcw5l0Y/S4BlQECQQDfl6Xo2FgET4d9CuX1ajX5kEkVqyMsBv0h6F00DVrFmcE6kLhCj9dGDNEiKF5UBbSjqcQYfxoniTl8KwcryyNBAkEAvByHCCH/qxXr0O8ae+t5nmCKkjUPhyIh/UizbmV3g8uubN79WaMZTRZ1uzefOAQYPGUtQf072/Zob1Ju0wUWTQJBAIASWhsUiN33O/FY471+F+qaRfKec2gNnMLmWTSujZbv6imEqbaes71RLB13qAhSuFSiskshyrZouL+x2cqw8cECQA3d0Hph/zW+XO6+4WXnGsT4+t4COU3Nz1GbbVai9idp+UafPW/BHRlYoX8Wf48ihiLVlnt5zlLNnC8wlWjKxDUCQQCA9LLFoRfuS9az8xRI8CFSCh7uFkBvTwR3Bgoqj1JUBH7gYzitT20wtNMyjM01L3rrNPioIS+YXRl8M4g+GvtM"

    .line 540
    goto/16 :goto_82

    :cond_1a7
    const-string v6, "6B85E9B116AC4039B6E05E68F0486A92"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 541
    const-string p1, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAJbh3e0/eF68GtoSE/wVZMna1GvFxthlN4hDsViuC4WGydAnK6HivvLI5SlV4lVKPV7gl+YOTUllhWoftUgCG664LyLIaxd0oJoF/TDSDuOz6+VPbIBfqJ+KpFXhGBc/WsOjZV//yR4/SKE9Mowpz/pZxi33V5tBG923yRmOP+8tAgMBAAECgYEAhcDqzHOUkF6uaxzVjIWmmG6eGn/0O0bXCLwBjjyTyCXp59Whj1wDrBQ9WfxhrPwoFWCCJ5YMG4Gc2KwNNy1vPXw928extH60D4N3i98gy+RcvrXLhXcHfepOrao9xbyTnG2gIz49AMrTA3MG7wjOlf5ZSUt3CE5PofNLt34cyMECQQDtFbNj5siI0rj+buDW8NCiDZYSZUzQWBdJ2xDWh7sxbTUMlF8dCwa2+avgWsyvz8yuUbu88vwOibcYM0daZSlRAkEAouuJqCqgvyEjL2upyQf3pd5ZTyDybjIy24LA+giSQrzHIZ3EIfgf1/674FQpvja8NqOr4gHvxZrO75S3TVXxHQJAOp9sDR7KpTJdteQaymsfW4K6ge/0b2vozkVRw4oqWk1jmamyXw8T6PiRbFdnV22tcckZ/92hP8MDuAMt+IcdEQJBAJ4LkEaq07WWF+PwtYxnRj6KLGkutP9hgySe+0WS+w/ywdpCifnKEloeq3M7MiNsRblbnWpqJoezXfvccNV9AaECQQCL8gnZJ5wbRFHvPcWIcYOw6tQmK5ddfWp+9Edma3ijxGaF4VK/tOv339dB7Xafh39+UfpAi2AqDMk+/+ZD+PGe"

    .line 542
    goto/16 :goto_82

    :cond_1b3
    const-string v6, "7EBF116B7DC847C4A109F51C858320E4"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bf

    .line 543
    const-string p1, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJydhvs8TQH3nTYE1XqDvSrl03CSKCQkxjloGN5ZVEOS6ysbWe1iBhJTw8Jbz8gG41FJql+tnsnzNTacGeK7M41IF9E+iME6w/4u14dMqbJr7HkK/c/fOkUfxsq5CcWi7/epmK5DgrvljB3OCj1AmBzDacoAb/mfSi3zypFeXSM5AgMBAAECgYBf2DuiBu4ttQZ954lpt7ONzCaQrrFoJSU2PpFxiYN68y9+KvfmwWVr091qVVucUzLMLWPZt9wERRWcvP1Odzf9U17Q3rDYR5dFnTCtitumnsOJVDLqXTH2psuVFrdKX8Vp//qEcO5flY8xSaxu9/oZflwMtFj2R5R26VEdoZ7PfQJBAP2PsBuaOdyZoiSp388WUn76KqO/LKX//JGYakuet24I/w8mW5ca0x3B8/N/CN8mG8DxBvCEIyTy2HscsbjeIscCQQCeHyQ8Pet37gh/QIlino32hRgEHcSwQsEpjYcWPoCJh0X7I2HzidTNY5JbFbxLyaHTFNfeNO5aW6IBCzlnpIn/AkEAhjERRspsbO9x/G1a4UIzDrhe8KIwgvnjNTqwpqys7zMbqWzndCTiLhGDhg5pJ5AHiCkHPyrvXpKXNzCMbgZB6QJAdlLzeKkVVa+oaCFRLZ1cuocqS5pDH2s0xPWFix3GbiPuOFpn6CjSN8g1Mzf2qff+wsgsKboOS0ua1ZEiqe403QJAVIW2LYRtt1YdlIjTopSSi9LQQKPFkP6DQjrO2n7BgOkWgQjsBHfZGy+AG7Yyq7WcKZEYKaEndqnwyZme8KcLcw=="

    .line 544
    goto/16 :goto_82

    :cond_1bf
    const-string v6, "DDFDAEC3DBF544DD99EB9F508B429905"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 545
    const-string p1, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJZJoM3tJzf96lejbCsQsCgnMAdLtyvf9ZkflExjEUuQ1O7g+OuWc4ZrvtE+coWZmUt2IjYkws63XAbFt/aMEHu/qerp3g/Mn1Y+tVFVbsME+hqhTVknOtt7kv+ZyVymHXZEBvzlTQXiybUDXkRqvvu+hO/+4BhS6fNmuggYpbTnAgMBAAECgYBhIABOVT+NTgnOzYywYD6YFItTi7k7H6fnZ6M9oqCgx171ams0Ra0vaB6Pt93nPZb2T8hYWXWUhqdwsQLs0SQs9+91881Nu1JE1nPAyeQKWv0t6Ol8BavecvEGUcJPXJ1/zZFU7r+s3pdz7OnQV2b77VhZiLsaQsmrxLPALdeTkQJBAMSxDuQymonH0q9KbMAgZ/c7ZraQhc1erf8eb6ni+3eXoJkJBlYsFmp+zFxo6gfj8N8nl0sV1sD3g2HwcUTOimsCQQDDmpG0uqTmAGJryfZOp8YB3VqhTZfFf1xcXQGNkUsaNXFpLMd5O4haRlL4FiROenVucYd0VU4eZIOi33CkYdZ1AkEAjxxUvWykTIN7o9b+8XuiqZwqy8Kz2A1/hBRdIrroRMeqLi8G0UQauzmu773WKg+LfpKL3jHxo01z5prPj0TIKQJBAJl5BMv2Cf4A3ThPnXd3gg/iewLG28d1N6Wsv9Qw5Olqd1KbdON1R3X1aZIH5XLB+LOwViR77jBAk1xOzpXbwiUCQDX4cj4IWy6brwCFFOkcqY23veDTIB8vXC2Kg//Kv1vUJ41DM82/Ga7fBAqCgTHSow3QlByoMFokAxmkU6Zc5EE="

    goto/16 :goto_82

    .line 602
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v5    # "sign":Ljava/lang/String;
    :catch_1cb
    move-exception v1

    .line 604
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_152
.end method

.method public static getOrderByNoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p0, "contxt"    # Landroid/content/Context;
    .param p1, "rsaPrivate"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "outOrderNo"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "totalFee"    # Ljava/lang/String;
    .param p6, "dealPrice"    # Ljava/lang/String;
    .param p7, "deliverType"    # Ljava/lang/String;
    .param p8, "submitTime"    # Ljava/lang/String;
    .param p9, "playerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v10, 0x0

    .line 383
    .local v10, "expireTime":Ljava/lang/String;
    const/4 v11, 0x0

    .line 384
    .local v11, "rebateRewards":Ljava/lang/String;
    const/4 v12, 0x0

    .line 385
    .local v12, "rebateExpireTime":Ljava/lang/String;
    const/4 v13, 0x0

    .line 386
    .local v13, "rebateMsg":Ljava/lang/String;
    const/4 v14, 0x0

    .line 387
    .local v14, "msg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 388
    .local v15, "notifyUrl":Ljava/lang/String;
    const-string v5, ""

    .local v5, "consumedRewards":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v16, p9

    .line 389
    invoke-static/range {v0 .. v16}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getOrderByNoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderByNoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 35
    .param p0, "contxt"    # Landroid/content/Context;
    .param p1, "rsaPrivate"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "outOrderNo"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "consumedRewards"    # Ljava/lang/String;
    .param p6, "totalFee"    # Ljava/lang/String;
    .param p7, "dealPrice"    # Ljava/lang/String;
    .param p8, "deliverType"    # Ljava/lang/String;
    .param p9, "submitTime"    # Ljava/lang/String;
    .param p10, "expireTime"    # Ljava/lang/String;
    .param p11, "rebateRewards"    # Ljava/lang/String;
    .param p12, "rebateExpireTime"    # Ljava/lang/String;
    .param p13, "rebateMsg"    # Ljava/lang/String;
    .param p14, "msg"    # Ljava/lang/String;
    .param p15, "notifyUrl"    # Ljava/lang/String;
    .param p16, "playerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v4, 0x0

    .line 357
    .local v4, "userId":Ljava/lang/String;
    if-nez p5, :cond_5

    .line 358
    const-string p5, ""

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 360
    invoke-static/range {v0 .. v17}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getOrderByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 256
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 258
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 260
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 262
    .local v3, "privateKey":Ljava/security/PrivateKey;
    return-object v3
.end method

.method public static getSubmitTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 276
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 277
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 278
    .local v0, "f":Ljava/text/DateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "submitTime":Ljava/lang/String;
    return-object v2
.end method

.method public static getThreadName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_36

    .line 292
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 290
    :catch_36
    move-exception v1

    goto :goto_31
.end method

.method private static initBaseDev(Ljava/lang/String;)V
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "pay.txt"

    invoke-direct {v2, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 126
    .end local v2    # "file":Ljava/io/File;
    :cond_d
    :goto_d
    return-void

    .line 107
    .restart local v2    # "file":Ljava/io/File;
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_d

    .line 113
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v3, "is":Ljava/io/InputStream;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 115
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 116
    .local v4, "lenth":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_29
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_5a

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 121
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/pay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/gionee/pay/third/GnCreateOrderUtils;->sDevelopUrl:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_d

    .line 123
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "lenth":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_55
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "lenth":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_5a
    :try_start_5a
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_55

    goto :goto_29
.end method

.method public static isFileExit(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 269
    const/4 v1, 0x1

    .line 271
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isNotNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-static {p0}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 223
    if-eqz p0, :cond_2a

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "null"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 224
    :cond_2a
    const/4 v0, 0x1

    .line 227
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static setTestURL(Ljava/lang/String;)V
    .registers 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "utf-8"

    .line 195
    .local v0, "charset":Ljava/lang/String;
    invoke-static {p2}, Lcom/gionee/pay/third/GnCreateOrderUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 196
    move-object v0, p2

    .line 199
    :cond_9
    :try_start_9
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v7, 0x0

    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 200
    .local v4, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 201
    .local v2, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 203
    .local v3, "priKey":Ljava/security/PrivateKey;
    const-string v7, "SHA1WithRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 205
    .local v5, "signature":Ljava/security/Signature;
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 207
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 208
    .local v6, "signed":[B
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_37

    move-result-object v7

    .line 213
    .end local v2    # "keyf":Ljava/security/KeyFactory;
    .end local v3    # "priKey":Ljava/security/PrivateKey;
    .end local v4    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v5    # "signature":Ljava/security/Signature;
    .end local v6    # "signed":[B
    :goto_36
    return-object v7

    .line 210
    :catch_37
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const/4 v7, 0x0

    goto :goto_36
.end method
